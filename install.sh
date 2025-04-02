#!/bin/bash

# FileMapper App Installation Script
# This script will create a functional version of the FileMapper app

# Exit on any error
set -e

echo "Creating a functional FileMapper application..."

# Create a temporary directory for our project
TEMP_DIR=$(mktemp -d)
echo "Working in temporary directory: $TEMP_DIR"
cd "$TEMP_DIR"

# Create a basic Swift command-line app that leverages AppKit
cat > FileMapper.swift << 'EOF'
import Cocoa
import SwiftUI

// Our main application class
class FileMapperApp: NSObject, NSApplicationDelegate {
    var window: NSWindow!
    
    func applicationDidFinishLaunching(_ notification: Notification) {
        // Create the SwiftUI view that provides the window contents
        let contentView = ContentView()
        
        // Create the window and set the content view
        window = NSWindow(
            contentRect: NSRect(x: 0, y: 0, width: 800, height: 600),
            styleMask: [.titled, .closable, .miniaturizable, .resizable, .fullSizeContentView],
            backing: .buffered,
            defer: false
        )
        window.center()
        window.setFrameAutosaveName("Main Window")
        window.contentView = NSHostingView(rootView: contentView)
        window.title = "FileMapper"
        window.makeKeyAndOrderFront(nil)
    }
    
    func applicationWillTerminate(_ notification: Notification) {
        // Clean up any resources
    }
}

// Our SwiftUI content view
struct ContentView: View {
    @State private var selectedPath: String = FileManager.default.homeDirectoryForCurrentUser.path
    @State private var directoryContents: [FileItem] = []
    
    var body: some View {
        HSplitView {
            // Sidebar
            List {
                Text("Home")
                    .font(.headline)
                    .onTapGesture {
                        navigateTo(FileManager.default.homeDirectoryForCurrentUser.path)
                    }
                
                Text("Applications")
                    .font(.headline)
                    .onTapGesture {
                        navigateTo("/Applications")
                    }
                
                Text("Documents")
                    .font(.headline)
                    .onTapGesture {
                        navigateTo(FileManager.default.homeDirectoryForCurrentUser.appendingPathComponent("Documents").path)
                    }
            }
            .frame(minWidth: 200, maxWidth: 200)
            
            // File list
            VStack {
                Text(selectedPath)
                    .font(.headline)
                    .padding()
                
                List(directoryContents) { item in
                    HStack {
                        Image(systemName: item.isDirectory ? "folder" : "doc")
                            .foregroundColor(item.isDirectory ? .blue : .gray)
                        Text(item.name)
                    }
                    .onTapGesture {
                        if item.isDirectory {
                            navigateTo(item.path)
                        }
                    }
                }
            }
        }
        .onAppear {
            navigateTo(selectedPath)
        }
    }
    
    private func navigateTo(_ path: String) {
        selectedPath = path
        loadDirectoryContents()
    }
    
    private func loadDirectoryContents() {
        do {
            let fileManager = FileManager.default
            let contents = try fileManager.contentsOfDirectory(atPath: selectedPath)
            directoryContents = contents.compactMap { fileName -> FileItem? in
                let fullPath = (selectedPath as NSString).appendingPathComponent(fileName)
                var isDirectory: ObjCBool = false
                guard fileManager.fileExists(atPath: fullPath, isDirectory: &isDirectory) else { return nil }
                
                return FileItem(
                    id: UUID(),
                    name: fileName,
                    path: fullPath, 
                    isDirectory: isDirectory.boolValue
                )
            }
        } catch {
            print("Error loading directory contents: \(error)")
            directoryContents = []
        }
    }
}

// File item model
struct FileItem: Identifiable {
    let id: UUID
    let name: String
    let path: String
    let isDirectory: Bool
}

// Main entry point
@main
struct FileMapperMain {
    static func main() {
        let app = NSApplication.shared
        let delegate = FileMapperApp()
        app.delegate = delegate
        app.run()
    }
}
EOF

# Compile the Swift file into an executable
echo "Compiling FileMapper app..."
swiftc -o FileMapper FileMapper.swift

# Create application bundle structure
mkdir -p "FileMapper.app/Contents/MacOS"
mkdir -p "FileMapper.app/Contents/Resources"

# Move the executable to the correct location
mv FileMapper "FileMapper.app/Contents/MacOS/"

# Create Info.plist
cat > "FileMapper.app/Contents/Info.plist" << 'EOF'
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>CFBundleExecutable</key>
    <string>FileMapper</string>
    <key>CFBundleIdentifier</key>
    <string>com.autogio.filemapper</string>
    <key>CFBundleName</key>
    <string>FileMapper</string>
    <key>CFBundleIconFile</key>
    <string>AppIcon</string>
    <key>CFBundlePackageType</key>
    <string>APPL</string>
    <key>CFBundleVersion</key>
    <string>1.0</string>
    <key>CFBundleShortVersionString</key>
    <string>1.0</string>
    <key>NSHighResolutionCapable</key>
    <true/>
    <key>NSMainNibFile</key>
    <string></string>
    <key>NSPrincipalClass</key>
    <string>NSApplication</string>
</dict>
</plist>
EOF

# Install the app
echo "Installing FileMapper to /Applications..."
if [ -d "/Applications/FileMapper.app" ]; then
    rm -rf "/Applications/FileMapper.app"
fi
cp -R "FileMapper.app" "/Applications/"

# Add to dock
echo "Adding FileMapper to Dock..."
defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/FileMapper.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>"
killall Dock

# Clean up
cd ..
rm -rf "$TEMP_DIR"

echo "Installation completed successfully!"
echo "FileMapper is now installed in your Applications folder and added to your Dock."
