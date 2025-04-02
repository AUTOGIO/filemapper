#!/bin/bash

# FileMapper One-Line Installation Script
# Usage: curl -sL https://raw.githubusercontent.com/yourusername/filemapper/main/install.sh | bash
# This script will:
# 1. Create a temporary directory
# 2. Generate all necessary Swift files
# 3. Build the Xcode project
# 4. Install the application to /Applications
# 5. Clean up temporary files

# Exit on any error
set -e

# Create a temporary directory
TEMP_DIR=$(mktemp -d)
echo "Created temporary directory: $TEMP_DIR"
cd "$TEMP_DIR"

# Create project directory structure
mkdir -p FileMapper/FileMapper
cd FileMapper

# Create project file
cat > FileMapper.xcodeproj/project.pbxproj << 'EOF'
// !$*UTF8*$!
{
	archiveVersion = 1;
	classes = {
	};
	objectVersion = 56;
	objects = {
		/* Begin PBXBuildFile section */
		1A1234567890ABCD1A1234AB /* FileMapperApp.swift in Sources */ = {isa = PBXBuildFile; fileRef = 1A1234567890ABCD1A1234BA /* FileMapperApp.swift */; };
		1A1234567890ABCD1A1234AC /* Views.swift in Sources */ = {isa = PBXBuildFile; fileRef = 1A1234567890ABCD1A1234BB /* Views.swift */; };
		1A1234567890ABCD1A1234AD /* FileManagerModel.swift in Sources */ = {isa = PBXBuildFile; fileRef = 1A1234567890ABCD1A1234BC /* FileManagerModel.swift */; };
		1A1234567890ABCD1A1234AE /* SearchView.swift in Sources */ = {isa = PBXBuildFile; fileRef = 1A1234567890ABCD1A1234BD /* SearchView.swift */; };
		1A1234567890ABCD1A1234AF /* MindMapView.swift in Sources */ = {isa = PBXBuildFile; fileRef = 1A1234567890ABCD1A1234BE /* MindMapView.swift */; };
		1A1234567890ABCD1A1234AG /* AppleScriptBridge.swift in Sources */ = {isa = PBXBuildFile; fileRef = 1A1234567890ABCD1A1234BF /* AppleScriptBridge.swift */; };
		1A1234567890ABCD1A1234AH /* KeyboardShortcuts.swift in Sources */ = {isa = PBXBuildFile; fileRef = 1A1234567890ABCD1A1234BG /* KeyboardShortcuts.swift */; };
		1A1234567890ABCD1A1234AI /* FileMapper.swift in Sources */ = {isa = PBXBuildFile; fileRef = 1A1234567890ABCD1A1234BH /* FileMapper.swift */; };
		1A1234567890ABCD1A1234AJ /* Assets.xcassets in Resources */ = {isa = PBXBuildFile; fileRef = 1A1234567890ABCD1A1234BI /* Assets.xcassets */; };
		/* End PBXBuildFile section */
		
		/* Begin PBXFileReference section */
		1A1234567890ABCD1A1234AA /* FileMapper.app */ = {isa = PBXFileReference; explicitFileType = wrapper.application; includeInIndex = 0; path = FileMapper.app; sourceTree = BUILT_PRODUCTS_DIR; };
		1A1234567890ABCD1A1234BA /* FileMapperApp.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = FileMapperApp.swift; sourceTree = "<group>"; };
		1A1234567890ABCD1A1234BB /* Views.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = Views.swift; sourceTree = "<group>"; };
		1A1234567890ABCD1A1234BC /* FileManagerModel.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = FileManagerModel.swift; sourceTree = "<group>"; };
		1A1234567890ABCD1A1234BD /* SearchView.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = SearchView.swift; sourceTree = "<group>"; };
		1A1234567890ABCD1A1234BE /* MindMapView.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = MindMapView.swift; sourceTree = "<group>"; };
		1A1234567890ABCD1A1234BF /* AppleScriptBridge.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = AppleScriptBridge.swift; sourceTree = "<group>"; };
		1A1234567890ABCD1A1234BG /* KeyboardShortcuts.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = KeyboardShortcuts.swift; sourceTree = "<group>"; };
		1A1234567890ABCD1A1234BH /* FileMapper.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = FileMapper.swift; sourceTree = "<group>"; };
		1A1234567890ABCD1A1234BI /* Assets.xcassets */ = {isa = PBXFileReference; lastKnownFileType = folder.assetcatalog; path = Assets.xcassets; sourceTree = "<group>"; };
		1A1234567890ABCD1A1234BJ /* Info.plist */ = {isa = PBXFileReference; lastKnownFileType = text.plist.xml; path = Info.plist; sourceTree = "<group>"; };
		1A1234567890ABCD1A1234BK /* FileMapper.entitlements */ = {isa = PBXFileReference; lastKnownFileType = text.plist.entitlements; path = FileMapper.entitlements; sourceTree = "<group>"; };
		/* End PBXFileReference section */
		
		/* Begin PBXFrameworksBuildPhase section */
		1A1234567890ABCD1A1234CD /* Frameworks */ = {
			isa = PBXFrameworksBuildPhase;
			buildActionMask = 2147483647;
			files = (
			);
			runOnlyForDeploymentPostprocessing = 0;
		};
		/* End PBXFrameworksBuildPhase section */
		
		/* Begin PBXGroup section */
		1A1234567890ABCD1A1234CE /* Products */ = {
			isa = PBXGroup;
			children = (
				1A1234567890ABCD1A1234AA /* FileMapper.app */,
			);
			name = Products;
			sourceTree = "<group>";
		};
		1A1234567890ABCD1A1234CF /* FileMapper */ = {
			isa = PBXGroup;
			children = (
				1A1234567890ABCD1A1234BA /* FileMapperApp.swift */,
				1A1234567890ABCD1A1234BB /* Views.swift */,
				1A1234567890ABCD1A1234BC /* FileManagerModel.swift */,
				1A1234567890ABCD1A1234BD /* SearchView.swift */,
				1A1234567890ABCD1A1234BE /* MindMapView.swift */,
				1A1234567890ABCD1A1234BF /* AppleScriptBridge.swift */,
				1A1234567890ABCD1A1234BG /* KeyboardShortcuts.swift */,
				1A1234567890ABCD1A1234BH /* FileMapper.swift */,
				1A1234567890ABCD1A1234BI /* Assets.xcassets */,
				1A1234567890ABCD1A1234BJ /* Info.plist */,
				1A1234567890ABCD1A1234BK /* FileMapper.entitlements */,
			);
			path = FileMapper;
			sourceTree = "<group>";
		};
		1A1234567890ABCD1A1234CG /* */ = {
			isa = PBXGroup;
			children = (
				1A1234567890ABCD1A1234CF /* FileMapper */,
				1A1234567890ABCD1A1234CE /* Products */,
			);
			sourceTree = "<group>";
		};
		/* End PBXGroup section */
		
		/* Begin PBXNativeTarget section */
		1A1234567890ABCD1A1234CH /* FileMapper */ = {
			isa = PBXNativeTarget;
			buildConfigurationList = 1A1234567890ABCD1A1234CI /* Build configuration list for PBXNativeTarget "FileMapper" */;
			buildPhases = (
				1A1234567890ABCD1A1234CJ /* Sources */,
				1A1234567890ABCD1A1234CD /* Frameworks */,
				1A1234567890ABCD1A1234CK /* Resources */,
			);
			buildRules = (
			);
			dependencies = (
			);
			name = FileMapper;
			productName = FileMapper;
			productReference = 1A1234567890ABCD1A1234AA /* FileMapper.app */;
			productType = "com.apple.product-type.application";
		};
		/* End PBXNativeTarget section */
		
		/* Begin PBXProject section */
		1A1234567890ABCD1A1234CL /* Project object */ = {
			isa = PBXProject;
			attributes = {
				BuildIndependentTargetsInParallel = 1;
				LastSwiftUpdateCheck = 1500;
				LastUpgradeCheck = 1500;
				TargetAttributes = {
					1A1234567890ABCD1A1234CH = {
						CreatedOnToolsVersion = 15.0;
					};
				};
			};
			buildConfigurationList = 1A1234567890ABCD1A1234CM /* Build configuration list for PBXProject "FileMapper" */;
			compatibilityVersion = "Xcode 14.0";
			developmentRegion = en;
			hasScannedForEncodings = 0;
			knownRegions = (
				en,
				Base,
			);
			mainGroup = 1A1234567890ABCD1A1234CG;
			productRefGroup = 1A1234567890ABCD1A1234CE /* Products */;
			projectDirPath = "";
			projectRoot = "";
			targets = (
				1A1234567890ABCD1A1234CH /* FileMapper */,
			);
		};
		/* End PBXProject section */
		
		/* Begin PBXResourcesBuildPhase section */
		1A1234567890ABCD1A1234CK /* Resources */ = {
			isa = PBXResourcesBuildPhase;
			buildActionMask = 2147483647;
			files = (
				1A1234567890ABCD1A1234AJ /* Assets.xcassets in Resources */,
			);
			runOnlyForDeploymentPostprocessing = 0;
		};
		/* End PBXResourcesBuildPhase section */
		
		/* Begin PBXSourcesBuildPhase section */
		1A1234567890ABCD1A1234CJ /* Sources */ = {
			isa = PBXSourcesBuildPhase;
			buildActionMask = 2147483647;
			files = (
				1A1234567890ABCD1A1234AB /* FileMapperApp.swift in Sources */,
				1A1234567890ABCD1A1234AC /* Views.swift in Sources */,
				1A1234567890ABCD1A1234AD /* FileManagerModel.swift in Sources */,
				1A1234567890ABCD1A1234AE /* SearchView.swift in Sources */,
				1A1234567890ABCD1A1234AF /* MindMapView.swift in Sources */,
				1A1234567890ABCD1A1234AG /* AppleScriptBridge.swift in Sources */,
				1A1234567890ABCD1A1234AH /* KeyboardShortcuts.swift in Sources */,
				1A1234567890ABCD1A1234AI /* FileMapper.swift in Sources */,
			);
			runOnlyForDeploymentPostprocessing = 0;
		};
		/* End PBXSourcesBuildPhase section */
		
		/* Begin XCBuildConfiguration section */
		1A1234567890ABCD1A1234CN /* Debug */ = {
			isa = XCBuildConfiguration;
			buildSettings = {
				ALWAYS_SEARCH_USER_PATHS = NO;
				ASSETCATALOG_COMPILER_GENERATE_SWIFT_ASSET_SYMBOL_EXTENSIONS = YES;
				CLANG_ANALYZER_NONNULL = YES;
				CLANG_ANALYZER_NUMBER_OBJECT_CONVERSION = YES_AGGRESSIVE;
				CLANG_CXX_LANGUAGE_STANDARD = "gnu++20";
				CLANG_ENABLE_MODULES = YES;
				CLANG_ENABLE_OBJC_ARC = YES;
				CLANG_ENABLE_OBJC_WEAK = YES;
				CLANG_WARN_BLOCK_CAPTURE_AUTORELEASING = YES;
				CLANG_WARN_BOOL_CONVERSION = YES;
				CLANG_WARN_COMMA = YES;
				CLANG_WARN_CONSTANT_CONVERSION = YES;
				CLANG_WARN_DEPRECATED_OBJC_IMPLEMENTATIONS = YES;
				CLANG_WARN_DIRECT_OBJC_ISA_USAGE = YES_ERROR;
				CLANG_WARN_DOCUMENTATION_COMMENTS = YES;
				CLANG_WARN_EMPTY_BODY = YES;
				CLANG_WARN_ENUM_CONVERSION = YES;
				CLANG_WARN_INFINITE_RECURSION = YES;
				CLANG_WARN_INT_CONVERSION = YES;
				CLANG_WARN_NON_LITERAL_NULL_CONVERSION = YES;
				CLANG_WARN_OBJC_IMPLICIT_RETAIN_SELF = YES;
				CLANG_WARN_OBJC_LITERAL_CONVERSION = YES;
				CLANG_WARN_OBJC_ROOT_CLASS = YES_ERROR;
				CLANG_WARN_QUOTED_INCLUDE_IN_FRAMEWORK_HEADER = YES;
				CLANG_WARN_RANGE_LOOP_ANALYSIS = YES;
				CLANG_WARN_STRICT_PROTOTYPES = YES;
				CLANG_WARN_SUSPICIOUS_MOVE = YES;
				CLANG_WARN_UNGUARDED_AVAILABILITY = YES_AGGRESSIVE;
				CLANG_WARN_UNREACHABLE_CODE = YES;
				CLANG_WARN__DUPLICATE_METHOD_MATCH = YES;
				COPY_PHASE_STRIP = NO;
				DEBUG_INFORMATION_FORMAT = dwarf;
				ENABLE_STRICT_OBJC_MSGSEND = YES;
				ENABLE_TESTABILITY = YES;
				ENABLE_USER_SCRIPT_SANDBOXING = YES;
				GCC_C_LANGUAGE_STANDARD = gnu17;
				GCC_DYNAMIC_NO_PIC = NO;
				GCC_NO_COMMON_BLOCKS = YES;
				GCC_OPTIMIZATION_LEVEL = 0;
				GCC_PREPROCESSOR_DEFINITIONS = (
					"DEBUG=1",
					"$(inherited)",
				);
				GCC_WARN_64_TO_32_BIT_CONVERSION = YES;
				GCC_WARN_ABOUT_RETURN_TYPE = YES_ERROR;
				GCC_WARN_UNDECLARED_SELECTOR = YES;
				GCC_WARN_UNINITIALIZED_AUTOS = YES_AGGRESSIVE;
				GCC_WARN_UNUSED_FUNCTION = YES;
				GCC_WARN_UNUSED_VARIABLE = YES;
				LOCALIZATION_PREFERS_STRING_CATALOGS = YES;
				MACOSX_DEPLOYMENT_TARGET = 14.0;
				MTL_ENABLE_DEBUG_INFO = INCLUDE_SOURCE;
				MTL_FAST_MATH = YES;
				ONLY_ACTIVE_ARCH = YES;
				SDKROOT = macosx;
				SWIFT_ACTIVE_COMPILATION_CONDITIONS = "DEBUG $(inherited)";
				SWIFT_OPTIMIZATION_LEVEL = "-Onone";
			};
			name = Debug;
		};
		1A1234567890ABCD1A1234CO /* Release */ = {
			isa = XCBuildConfiguration;
			buildSettings = {
				ALWAYS_SEARCH_USER_PATHS = NO;
				ASSETCATALOG_COMPILER_GENERATE_SWIFT_ASSET_SYMBOL_EXTENSIONS = YES;
				CLANG_ANALYZER_NONNULL = YES;
				CLANG_ANALYZER_NUMBER_OBJECT_CONVERSION = YES_AGGRESSIVE;
				CLANG_CXX_LANGUAGE_STANDARD = "gnu++20";
				CLANG_ENABLE_MODULES = YES;
				CLANG_ENABLE_OBJC_ARC = YES;
				CLANG_ENABLE_OBJC_WEAK = YES;
				CLANG_WARN_BLOCK_CAPTURE_AUTORELEASING = YES;
				CLANG_WARN_BOOL_CONVERSION = YES;
				CLANG_WARN_COMMA = YES;
				CLANG_WARN_CONSTANT_CONVERSION = YES;
				CLANG_WARN_DEPRECATED_OBJC_IMPLEMENTATIONS = YES;
				CLANG_WARN_DIRECT_OBJC_ISA_USAGE = YES_ERROR;
				CLANG_WARN_DOCUMENTATION_COMMENTS = YES;
				CLANG_WARN_EMPTY_BODY = YES;
				CLANG_WARN_ENUM_CONVERSION = YES;
				CLANG_WARN_INFINITE_RECURSION = YES;
				CLANG_WARN_INT_CONVERSION = YES;
				CLANG_WARN_NON_LITERAL_NULL_CONVERSION = YES;
				CLANG_WARN_OBJC_IMPLICIT_RETAIN_SELF = YES;
				CLANG_WARN_OBJC_LITERAL_CONVERSION = YES;
				CLANG_WARN_OBJC_ROOT_CLASS = YES_ERROR;
				CLANG_WARN_QUOTED_INCLUDE_IN_FRAMEWORK_HEADER = YES;
				CLANG_WARN_RANGE_LOOP_ANALYSIS = YES;
				CLANG_WARN_STRICT_PROTOTYPES = YES;
				CLANG_WARN_SUSPICIOUS_MOVE = YES;
				CLANG_WARN_UNGUARDED_AVAILABILITY = YES_AGGRESSIVE;
				CLANG_WARN_UNREACHABLE_CODE = YES;
				CLANG_WARN__DUPLICATE_METHOD_MATCH = YES;
				COPY_PHASE_STRIP = NO;
				DEBUG_INFORMATION_FORMAT = "dwarf-with-dsym";
				ENABLE_NS_ASSERTIONS = NO;
				ENABLE_STRICT_OBJC_MSGSEND = YES;
				ENABLE_USER_SCRIPT_SANDBOXING = YES;
				GCC_C_LANGUAGE_STANDARD = gnu17;
				GCC_NO_COMMON_BLOCKS = YES;
				GCC_WARN_64_TO_32_BIT_CONVERSION = YES;
				GCC_WARN_ABOUT_RETURN_TYPE = YES_ERROR;
				GCC_WARN_UNDECLARED_SELECTOR = YES;
				GCC_WARN_UNINITIALIZED_AUTOS = YES_AGGRESSIVE;
				GCC_WARN_UNUSED_FUNCTION = YES;
				GCC_WARN_UNUSED_VARIABLE = YES;
				LOCALIZATION_PREFERS_STRING_CATALOGS = YES;
				MACOSX_DEPLOYMENT_TARGET = 14.0;
				MTL_ENABLE_DEBUG_INFO = NO;
				MTL_FAST_MATH = YES;
				SDKROOT = macosx;
				SWIFT_COMPILATION_MODE = wholemodule;
			};
			name = Release;
		};
		1A1234567890ABCD1A1234CP /* Debug */ = {
			isa = XCBuildConfiguration;
			buildSettings = {
				ASSETCATALOG_COMPILER_APPICON_NAME = AppIcon;
				ASSETCATALOG_COMPILER_GLOBAL_ACCENT_COLOR_NAME = AccentColor;
				CODE_SIGN_ENTITLEMENTS = FileMapper/FileMapper.entitlements;
				CODE_SIGN_STYLE = Automatic;
				COMBINE_HIDPI_IMAGES = YES;
				CURRENT_PROJECT_VERSION = 1;
				GENERATE_INFOPLIST_FILE = YES;
				INFOPLIST_FILE = FileMapper/Info.plist;
				INFOPLIST_KEY_NSHumanReadableCopyright = "";
				INFOPLIST_KEY_NSMainStoryboardFile = "";
				INFOPLIST_KEY_NSPrincipalClass = NSApplication;
				LD_RUNPATH_SEARCH_PATHS = (
					"$(inherited)",
					"@executable_path/../Frameworks",
				);
				MARKETING_VERSION = 1.0;
				PRODUCT_BUNDLE_IDENTIFIER = com.example.FileMapper;
				PRODUCT_NAME = "$(TARGET_NAME)";
				SWIFT_EMIT_LOC_STRINGS = YES;
				SWIFT_VERSION = 5.0;
			};
			name = Debug;
		};
		1A1234567890ABCD1A1234CQ /* Release */ = {
			isa = XCBuildConfiguration;
			buildSettings = {
				ASSETCATALOG_COMPILER_APPICON_NAME = AppIcon;
				ASSETCATALOG_COMPILER_GLOBAL_ACCENT_COLOR_NAME = AccentColor;
				CODE_SIGN_ENTITLEMENTS = FileMapper/FileMapper.entitlements;
				CODE_SIGN_STYLE = Automatic;
				COMBINE_HIDPI_IMAGES = YES;
				CURRENT_PROJECT_VERSION = 1;
				GENERATE_INFOPLIST_FILE = YES;
				INFOPLIST_FILE = FileMapper/Info.plist;
				INFOPLIST_KEY_NSHumanReadableCopyright = "";
				INFOPLIST_KEY_NSMainStoryboardFile = "";
				INFOPLIST_KEY_NSPrincipalClass = NSApplication;
				LD_RUNPATH_SEARCH_PATHS = (
					"$(inherited)",
					"@executable_path/../Frameworks",
				);
				MARKETING_VERSION = 1.0;
				PRODUCT_BUNDLE_IDENTIFIER = com.example.FileMapper;
				PRODUCT_NAME = "$(TARGET_NAME)";
				SWIFT_EMIT_LOC_STRINGS = YES;
				SWIFT_VERSION = 5.0;
			};
			name = Release;
		};
		/* End XCBuildConfiguration section */
		
		/* Begin XCConfigurationList section */
		1A1234567890ABCD1A1234CI /* Build configuration list for PBXNativeTarget "FileMapper" */ = {
			isa = XCConfigurationList;
			buildConfigurations = (
				1A1234567890ABCD1A1234CP /* Debug */,
				1A1234567890ABCD1A1234CQ /* Release */,
			);
			defaultConfigurationIsVisible = 0;
			defaultConfigurationName = Release;
		};
		1A1234567890ABCD1A1234CM /* Build configuration list for PBXProject "FileMapper" */ = {
			isa = XCConfigurationList;
			buildConfigurations = (
				1A1234567890ABCD1A1234CN /* Debug */,
				1A1234567890ABCD1A1234CO /* Release */,
			);
			defaultConfigurationIsVisible = 0;
			defaultConfigurationName = Release;
		};
		/* End XCConfigurationList section */
	};
	rootObject = 1A1234567890ABCD1A1234CL /* Project object */;
}
EOF

# Create Xcode project directories
mkdir -p FileMapper.xcodeproj
mkdir -p FileMapper

# Create missing Info.plist
cat > FileMapper/Info.plist << 'EOF'
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>CFBundleDevelopmentRegion</key>
	<string>$(DEVELOPMENT_LANGUAGE)</string>
	<key>CFBundleExecutable</key>
	<string>$(EXECUTABLE_NAME)</string>
	<key>CFBundleIdentifier</key>
	<string>$(PRODUCT_BUNDLE_IDENTIFIER)</string>
	<key>CFBundleInfoDictionaryVersion</key>
	<string>6.0</string>
	<key>CFBundleName</key>
	<string>$(PRODUCT_NAME)</string>
	<key>CFBundlePackageType</key>
	<string>$(PRODUCT_BUNDLE_PACKAGE_TYPE)</string>
	<key>CFBundleShortVersionString</key>
	<string>$(MARKETING_VERSION)</string>
	<key>CFBundleVersion</key>
	<string>$(CURRENT_PROJECT_VERSION)</string>
	<key>LSMinimumSystemVersion</key>
	<string>$(MACOSX_DEPLOYMENT_TARGET)</string>
	<key>NSAppleEventsUsageDescription</key>
	<string>FileMapper needs to interact with Finder to provide enhanced functionality.</string>
</dict>
</plist>
EOF

# Create entitlements file
cat > FileMapper/FileMapper.entitlements << 'EOF'
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>com.apple.security.app-sandbox</key>
	<true/>
	<key>com.apple.security.files.user-selected.read-write</key>
	<true/>
	<key>com.apple.security.automation.apple-events</key>
	<true/>
</dict>
</plist>
EOF

# Create Assets.xcassets structure
mkdir -p FileMapper/Assets.xcassets
mkdir -p FileMapper/Assets.xcassets/AppIcon.appiconset
mkdir -p FileMapper/Assets.xcassets/AccentColor.colorset

# Create Contents.json for Assets
cat > FileMapper/Assets.xcassets/Contents.json << 'EOF'
{
  "info" : {
    "author" : "xcode",
    "version" : 1
  }
}
EOF

# Create AppIcon Contents.json
cat > FileMapper/Assets.xcassets/AppIcon.appiconset/Contents.json << 'EOF'
{
  "images" : [
    {
      "idiom" : "mac",
      "scale" : "1x",
      "size" : "16x16"
    },
    {
      "idiom" : "mac",
      "scale" : "2x",
      "size" : "16x16"
    },
    {
      "idiom" : "mac",
      "scale" : "1x",
      "size" : "32x32"
    },
    {
      "idiom" : "mac",
      "scale" : "2x",
      "size" : "32x32"
    },
    {
      "idiom" : "mac",
      "scale" : "1x",
      "size" : "128x128"
    },
    {
      "idiom" : "mac",
      "scale" : "2x",
      "size" : "128x128"
    },
    {
      "idiom" : "mac",
      "scale" : "1x",
      "size" : "256x256"
    },
    {
      "idiom" : "mac",
      "scale" : "2x",
      "size" : "256x256"
    },
    {
      "idiom" : "mac",
      "scale" : "1x",
      "size" : "512x512"
    },
    {
      "idiom" : "mac",
      "scale" : "2x",
      "size" : "512x512"
    }
  ],
  "info" : {
    "author" : "xcode",
    "version" : 1
  }
}
EOF

# Create AccentColor Contents.json
cat > FileMapper/Assets.xcassets/AccentColor.colorset/Contents.json << 'EOF'
{
  "colors" : [
    {
      "color" : {
        "color-space" : "srgb",
        "components" : {
          "alpha" : "1.000",
          "blue" : "0.976",
          "green" : "0.569",
          "red" : "0.000"
        }
      },
      "idiom" : "universal"
    },
    {
      "appearances" : [
        {
          "appearance" : "luminosity",
          "value" : "dark"
        }
      ],
      "color" : {
        "color-space" : "srgb",
        "components" : {
          "alpha" : "1.000",
          "blue" : "1.000",
          "green" : "0.655",
          "red" : "0.118"
        }
      },
      "idiom" : "universal"
    }
  ],
  "info" : {
    "author" : "xcode",
    "version" : 1
  }
}
EOF

# Create Swift files from user-provided code
# Create Views.swift
cat > FileMapper/Views.swift << 'EOF'
import SwiftUI

struct SidebarView: View {
    @Binding var selectedPath: String?
    
    var body: some View {
        List {
            NavigationLink(destination: FileTreeView(path: FileManager.default.homeDirectoryForCurrentUser.path)) {
                Label("Home", systemImage: "house")
            }
            NavigationLink(destination: FileTreeView(path: "/Applications")) {
                Label("Applications", systemImage: "app.badge")
            }
            NavigationLink(destination: FileTreeView(path: "/Users/Shared")) {
                Label("Shared", systemImage: "person.2")
            }
            NavigationLink(destination: FileTreeView(path: "/")) {
                Label("Root", systemImage: "folder")
            }
        }
        .listStyle(SidebarListStyle())
    }
}

struct FileTreeView: View {
    let path: String
    @StateObject private var viewModel = FileManagerModel()
    
    var body: some View {
        List(viewModel.items) { item in
            FileRowView(item: item)
        }
        .onAppear {
            viewModel.navigate(to: path)
        }
    }
}

struct FileRowView: View {
    let item: FileItem
    @State private var isExpanded = false
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(systemName: item.icon)
                    .foregroundColor(item.isDirectory ? .blue : .gray)
                Text(item.name)
                Spacer()
                if item.isDirectory {
                    Image(systemName: isExpanded ? "chevron.down" : "chevron.right")
                        .foregroundColor(.gray)
                }
            }
            .contentShape(Rectangle())
            .onTapGesture {
                if item.isDirectory {
                    isExpanded.toggle()
                }
            }
            
            if isExpanded && item.isDirectory {
                FileTreeView(path: item.path)
                    .padding(.leading)
            }
        }
    }
}

struct FileDetailsView: View {
    let path: String
    @State private var fileAttributes: [FileAttributeKey: Any]?
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text("File Details")
                    .font(.title)
                    .padding(.bottom)
                
                if let attributes = fileAttributes {
                    Group {
                        DetailRow(title: "Size", value: formatFileSize(attributes[.size] as? Int64 ?? 0))
                        DetailRow(title: "Created", value: formatDate(attributes[.creationDate] as? Date))
                        DetailRow(title: "Modified", value: formatDate(attributes[.modificationDate] as? Date))
                        DetailRow(title: "Owner", value: attributes[.ownerAccountName] as? String ?? "Unknown")
                        DetailRow(title: "Type", value: attributes[.type] as? String ?? "Unknown")
                    }
                }
            }
            .padding()
        }
        .onAppear {
            loadFileAttributes()
        }
    }
    
    private func loadFileAttributes() {
        do {
            fileAttributes = try FileManager.default.attributesOfItem(atPath: path)
        } catch {
            print("Error loading file attributes: \(error)")
        }
    }
    
    private func formatFileSize(_ size: Int64) -> String {
        let formatter = ByteCountFormatter()
        formatter.allowedUnits = [.useAll]
        formatter.countStyle = .file
        return formatter.string(fromByteCount: size)
    }
    
    private func formatDate(_ date: Date?) -> String {
        guard let date = date else { return "Unknown" }
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        return formatter.string(from: date)
    }
}

struct DetailRow: View {
    let title: String
    let value: String
    
    var body: some View {
        HStack {
            Text(title)
                .bold()
                .frame(width: 100, alignment: .leading)
            Text(value)
        }
    }
}
EOF

# Create SearchView.swift
cat > FileMapper/SearchView.swift << 'EOF'
import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    @State private var selectedFilters: Set<FileFilter> = []
    @StateObject private var searchResults = SearchResults()
    
    var body: some View {
        VStack {
            // Search bar
            HStack {
                Image(systemName: "magnifyingglass")
                TextField("Search files...", text: $searchText)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .onChange(of: searchText) { _ in
                        searchResults.search(query: searchText, filters: selectedFilters)
                    }
            }
            .padding()
            
            // Filters
            ScrollView(.horizontal) {
                HStack {
                    ForEach(FileFilter.allCases) { filter in
                        FilterChip(
                            filter: filter,
                            isSelected: selectedFilters.contains(filter),
                            action: { toggleFilter(filter) }
                        )
                    }
                }
            }
            .padding(.horizontal)
            
            // Results
            List(searchResults.items) { item in
                FileRowView(item: item)
            }
        }
    }
    
    private func toggleFilter(_ filter: FileFilter) {
        if selectedFilters.contains(filter) {
            selectedFilters.remove(filter)
        } else {
            selectedFilters.insert(filter)
        }
        searchResults.search(query: searchText, filters: selectedFilters)
    }
}

enum FileFilter: String, CaseIterable, Identifiable {
    case documents = "Documents"
    case images = "Images"
    case audio = "Audio"
    case video = "Video"
    case archives = "Archives"
    
    var id: String { rawValue }
}

class SearchResults: ObservableObject {
    @Published var items: [FileItem] = []
    
    func search(query: String, filters: Set<FileFilter>) {
        // Implement file search logic here
    }
}

struct FilterChip: View {
    let filter: FileFilter
    let isSelected: Bool
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(filter.rawValue)
                .padding(.horizontal, 12)
                .padding(.vertical, 6)
                .background(isSelected ? Color.blue : Color.gray.opacity(0.2))
                .foregroundColor(isSelected ? .white : .primary)
                .cornerRadius(15)
        }
    }
}
EOF

# Create MindMapView.swift
cat > FileMapper/MindMapView.swift << 'EOF'
import SwiftUI

struct MindMapView: View {
    let path: String
    @StateObject private var viewModel = FileManagerModel()
    @State private var offset = CGSize.zero
    @State private var scale: CGFloat = 1.0
    
    var body: some View {
        ZStack {
            Color.clear
            
            NodeView(item: FileItem(
                name: (path as NSString).lastPathComponent,
                path: path,
                isDirectory: true,
                icon: "folder"
            ), children: viewModel.items)
        }
        .gesture(
            MagnificationGesture()
                .onChanged { scale = $0 }
        )
        .gesture(
            DragGesture()
                .onChanged { offset = $0.translation }
        )
        .scaleEffect(scale)
        .offset(offset)
        .onAppear {
            viewModel.navigate(to: path)
        }
    }
}

struct NodeView: View {
    let item: FileItem
    let children: [FileItem]
    @State private var isExpanded = true
    
    var body: some View {
        VStack {
            Button(action: { isExpanded.toggle() }) {
                HStack {
                    Image(systemName: item.icon)
                        .foregroundColor(item.isDirectory ? .blue : .gray)
                    Text(item.name)
                }
                .padding()
                .background(Color.white)
                .cornerRadius(8)
                .shadow(radius: 2)
            }
            
            if isExpanded && item.isDirectory {
                ForEach(children) { child in
                    if child.isDirectory {
                        Line()
                            .stroke(Color.gray, lineWidth: 1)
                            .frame(width: 1, height: 20)
                        
                        NodeView(item: child, children: [])
                            .padding(.leading, 60)
                    }
                }
            }
        }
    }
}

struct Line: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.maxY))
        return path
    }
}
EOF

# Create AppleScriptBridge.swift
cat > FileMapper/AppleScriptBridge.swift << 'EOF'
import Foundation
import AppleScriptObjC

class AppleScriptBridge {
    static func revealInFinder(path: String) {
        let script = """
        tell application "Finder"
            reveal POSIX file "\(path)" as alias
            activate
        end tell
        """
        
        var error: NSDictionary?
        if let scriptObject = NSAppleScript(source: script) {
            scriptObject.executeAndReturnError(&error)
            if let error = error {
                print("AppleScript error: \(error)")
            }
        }
    }
    
    static func getFinderSelection() -> [String] {
        let script = """
        tell application "Finder"
            set selectedItems to selection
            set paths to {}
            repeat with i in selectedItems
                set end of paths to (POSIX path of (i as alias))
            end repeat
            return paths
        end tell
        """
        
        var error: NSDictionary?
        if let scriptObject = NSAppleScript(source: script),
           let result = scriptObject.executeAndReturnError(&error).stringValue {
            return result.components(separatedBy: ",")
        }
        return []
    }
}
EOF

# Create FileManagerModel.swift
cat > FileMapper/FileManagerModel.swift << 'EOF'
import Foundation

class FileManagerModel: ObservableObject {
    @Published var currentPath: String
    @Published var items: [FileItem] = []
    @Published var searchResults: [FileItem] = []
    
    private let fileManager = FileManager.default
    private var searchTask: Task<Void, Never>?
    
    init() {
        self.currentPath = fileManager.homeDirectoryForCurrentUser.path
        loadItems()
    }
    
    func loadItems() {
        do {
            let contents = try fileManager.contentsOfDirectory(atPath: currentPath)
            items = contents.compactMap { path -> FileItem? in
                let fullPath = (currentPath as NSString).appendingPathComponent(path)
                var isDirectory: ObjCBool = false
                guard fileManager.fileExists(atPath: fullPath, isDirectory: &isDirectory) else { return nil }
                
                return FileItem(
                    name: path,
                    path: fullPath,
                    isDirectory: isDirectory.boolValue,
                    icon: isDirectory.boolValue ? "folder" : "doc"
                )
            }
        } catch {
            print("Error loading directory contents: \(error)")
        }
    }
    
    func navigate(to path: String) {
        currentPath = path
        loadItems()
    }
    
    func search(query: String, filters: Set<FileFilter>) {
        // Cancel any existing search
        searchTask?.cancel()
        
        searchTask = Task {
            await performSearch(query: query, filters: filters)
        }
    }
    
    private func performSearch(query: String, filters: Set<FileFilter>) async {
        guard !query.isEmpty else {
            await MainActor.run { searchResults = [] }
            return
        }
        
        var results: [FileItem] = []
        let enumerator = fileManager.enumerator(
            at: URL(fileURLWithPath: currentPath),
            includingPropertiesForKeys: [.isDirectoryKey],
            options: [.skipsHiddenFiles]
        )
        
        while let url = enumerator?.nextObject() as? URL {
            if Task.isCancelled { return }
            
            let path = url.path
            let name = url.lastPathComponent.lowercased()
            
            if name.contains(query.lowercased()) {
                var isDirectory: ObjCBool = false
                if fileManager.fileExists(atPath: path, isDirectory: &isDirectory) {
                    let item = FileItem(
                        name: url.lastPathComponent,
                        path: path,
                        isDirectory: isDirectory.boolValue,
                        icon: getSystemIcon(for: path, isDirectory: isDirectory.boolValue)
                    )
                    
                    if filters.isEmpty || shouldInclude(item: item, in: filters) {
                        results.append(item)
                    }
                }
            }
        }
        
        await MainActor.run {
            searchResults = results
        }
    }
    
    private func shouldInclude(item: FileItem, in filters: Set<FileFilter>) -> Bool {
        let pathExtension = (item.path as NSString).pathExtension.lowercased()
        
        for filter in filters {
            switch filter {
            case .documents:
                if ["pdf", "doc", "docx", "txt", "rtf"].contains(pathExtension) {
                    return true
                }
            case .images:
                if ["jpg", "jpeg", "png", "gif", "heic"].contains(pathExtension) {
                    return true
                }
            case .audio:
                if ["mp3", "wav", "m4a", "aac"].contains(pathExtension) {
                    return true
                }
            case .video:
                if ["mp4", "mov", "avi", "mkv"].contains(pathExtension) {
                    return true
                }
            case .archives:
                if ["zip", "rar", "7z", "tar", "gz"].contains(pathExtension) {
                    return true
                }
            }
        }
        return false
    }
    
    private func getSystemIcon(for path: String, isDirectory: Bool) -> String {
        if isDirectory {
            return "folder"
        }
        
        let pathExtension = (path as NSString).pathExtension.lowercased()
        switch pathExtension {
        case "pdf": return "doc.fill"
        case "jpg", "jpeg", "png", "gif": return "photo"
        case "mp3", "wav", "m4a": return "music.note"
        case "mp4", "mov", "avi": return "film"
        case "zip", "rar", "7z": return "archivebox"
        default: return "doc"
        }
    }
}

struct FileItem: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let path: String
    let isDirectory: Bool
    let icon: String
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(path)
    }
    
    static func == (lhs: FileItem, rhs: FileItem) -> Bool {
        lhs.path == rhs.path
    }
}
EOF

# Create KeyboardShortcuts.swift
cat > FileMapper/KeyboardShortcuts.swift << 'EOF'
import SwiftUI

struct KeyboardShortcuts {
    static let shortcuts: [KeyboardShortcut] = [
        KeyboardShortcut("h", modifiers: [.command], action: "Go to Home"),
        KeyboardShortcut("f", modifiers: [.command], action: "Quick Search"),
        KeyboardShortcut("e", modifiers: [.command], action: "Expand/Collapse"),
        KeyboardShortcut("m", modifiers: [.command], action: "Toggle Mind Map"),
        KeyboardShortcut(".", modifiers: [.command], action: "Show/Hide Hidden Files"),
        KeyboardShortcut("r", modifiers: [.command], action: "Refresh View"),
        KeyboardShortcut("space", modifiers: [], action: "Quick Look")
    ]
}

extension View {
    func withDefaultKeyboardShortcuts() -> some View {
        self.modifier(KeyboardShortcutsModifier())
    }
}

struct KeyboardShortcutsModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .keyboardShortcut("h", modifiers: [.command]) // Home
            .keyboardShortcut("f", modifiers: [.command]) // Search
            .keyboardShortcut("e", modifiers: [.command]) // Expand/Collapse
            .keyboardShortcut("m", modifiers: [.command]) // Mind Map
            .keyboardShortcut(".", modifiers: [.command]) // Hidden Files
            .keyboardShortcut("r", modifiers: [.command]) // Refresh
            .keyboardShortcut(.space, modifiers: [])      // Quick Look
    }
}
EOF

# Create extension for Notification.Name
cat > FileMapper/FileMapper.swift << 'EOF'
import SwiftUI

extension Notification.Name {
    static let toggleMindMap = Notification.Name("toggleMindMap")
    static let toggleSearch = Notification.Name("toggleSearch")
}
EOF

# Create FileMapperApp.swift
cat > FileMapper/FileMapperApp.swift << 'EOF'
import SwiftUI

@main
struct FileMapperApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .windowStyle(.hiddenTitleBar)
        .windowToolbarStyle(.unified)
        .commands {
            CommandGroup(after: .toolbar) {
                Button("Toggle Mind Map") {
                    NotificationCenter.default.post(name: .toggleMindMap, object: nil)
                }
                .keyboardShortcut("m", modifiers: [.command])
                
                Button("Quick Search") {
                    NotificationCenter.default.post(name: .toggleSearch, object: nil)
                }
                .keyboardShortcut("f", modifiers: [.command])
            }
        }
    }
}

struct ContentView: View {
    @StateObject private var fileManager = FileManagerModel()
    @State private var selectedPath: String?
    @State private var showingMindMap = false
    @State private var showingSearch = false
    
    var body: some View {
        NavigationSplitView {
            SidebarView(selectedPath: $selectedPath)
        } content: {
            ZStack {
                if showingMindMap {
                    MindMapView(path: selectedPath ?? FileManager.default.homeDirectoryForCurrentUser.path)
                } else {
                    FileTreeView(path: selectedPath ?? FileManager.default.homeDirectoryForCurrentUser.path)
                }
            }
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    Button(action: { showingMindMap.toggle() }) {
                        Label("Toggle View", systemImage: showingMindMap ? "list.bullet" : "map")
                    }
                }
                ToolbarItem(placement: .primaryAction) {
                    Button(action: { showingSearch.toggle() }) {
                        Label("Search", systemImage: "magnifyingglass")
                    }
                }
                ToolbarItem(placement: .primaryAction) {
                    if let path = selectedPath {
                        Button(action: { AppleScriptBridge.revealInFinder(path: path) }) {
                            Label("Show in Finder", systemImage: "finder")
                        }
                    }
                }
            }
        } detail: {
            if let selectedPath = selectedPath {
                FileDetailsView(path: selectedPath)
            } else {
                Text("Select a file or folder")
            }
        }
        .sheet(isPresented: $showingSearch) {
            SearchView()
                .frame(minWidth: 400, minHeight: 300)
        }
        .onAppear {
            setupNotifications()
        }
        .withDefaultKeyboardShortcuts()
    }
    
    private func setupNotifications() {
        NotificationCenter.default.addObserver(
            forName: .toggleMindMap,
            object: nil,
            queue: .main
        ) { _ in
            showingMindMap.toggle()
        }
        
        NotificationCenter.default.addObserver(
            forName: .toggleSearch,
            object: nil,
            queue: .main
        ) { _ in
            showingSearch.toggle()
        }
    }
}
