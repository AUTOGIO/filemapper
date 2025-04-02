#!/bin/bash

# FileMapper One-Line Installation Script
# Usage: curl -sL https://raw.githubusercontent.com/AUTOGIO/filemapper/main/install.sh | bash

# Exit on any error
set -e

# Create a directory for the app
echo "Creating FileMapper application..."
mkdir -p "/Applications/FileMapper.app/Contents/MacOS"
mkdir -p "/Applications/FileMapper.app/Contents/Resources"

# Create Info.plist
cat > "/Applications/FileMapper.app/Contents/Info.plist" << 'EOF'
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
	<key>CFBundleVersion</key>
	<string>1.0</string>
	<key>CFBundleShortVersionString</key>
	<string>1.0</string>
</dict>
</plist>
EOF

# Create a simple executable bash script that launches Finder instead
cat > "/Applications/FileMapper.app/Contents/MacOS/FileMapper" << 'EOF'
#!/bin/bash
osascript -e 'tell application "Finder" to activate'
osascript -e 'tell application "Finder" to make new Finder window to home'
EOF

# Make the file executable
chmod +x "/Applications/FileMapper.app/Contents/MacOS/FileMapper"

# Add an icon file
cat > "/Applications/FileMapper.app/Contents/Resources/AppIcon.icns" << 'EOF'
# This is a placeholder for an icon file
EOF

echo "FileMapper has been installed to /Applications/FileMapper.app"
echo "This is a simplified placeholder version - it launches Finder when run."

# Add to dock
echo "Adding FileMapper to Dock..."
defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/FileMapper.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>"
killall Dock

echo "Installation completed successfully!"
