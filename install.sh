#!/bin/bash

# FileMapper One-Line Installation Script
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

# Create proper directory structure for Xcode project
mkdir -p FileMapper.xcodeproj

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

# Create missing Info.plist
mkdir -p FileMapper
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

# Create Swift files
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
            Side
