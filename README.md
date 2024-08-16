# Flutter Apple Spotlight Plugin

A Flutter plugin for indexing items into Spotlight on iOS and macOS, inspired by the flutter_core_spotlight plugin. This plugin adds support for macOS, allowing you to integrate Spotlight search functionalities into your Flutter applications on both iOS and macOS platforms.

## Features

- Start and update `NSUserActivity` to enable Handoff.
- Handle Handoff activities from other devices.
- Easily update activity state and user information.
  
## Getting Started

### Installation

To use this plugin, add `flutter_apple_spotlight` as a dependency in your `pubspec.yaml` file:

```yaml
dependencies:
  flutter:
    sdk: flutter
  flutter_apple_spotlight:
    git:
      url: https://github.com/HarryDeKat/flutter_apple_spotlight.git
```

Then run `flutter pub get` to fetch the plugin.

### macOS Setup

**Note:** As of the current version, automatic handling of Spotlight activities on macOS is not fully supported by flutter (see [#148233](https://github.com/flutter/flutter/issues/148233)). You need to manually add the following code to your macOS `AppDelegate`:

```swift
import Cocoa
import FlutterMacOS

// -- New imports -- 
import flutter_apple_spotlight
import CoreSpotlight
// -- 

@NSApplicationMain
class AppDelegate: FlutterAppDelegate {
    
    override func application(
        _ application: NSApplication, continue userActivity: NSUserActivity,
        restorationHandler: @escaping ([NSUserActivityRestoring]) -> Void
    ) -> Bool {
        
        // Spotlight
        if userActivity.activityType == CSSearchableItemActionType {
            userActivity.resignCurrent()
            userActivity.invalidate()
            SwiftFlutterAppleSpotlightPlugin.pressedCallback(userActivity: userActivity)
            return true
        }
        
        return false
    }
}
```

This code ensures that Spotlight activities are properly handled on macOS. Without it, the plugin will not be able to intercept Spotlight activities on macOS devices.

### Usage

Here's how you can use the plugin in your Flutter app:

#### Indexing items

To index items you can do the following: 

```dart
import 'package:flutter_apple_spotlight/flutter_apple_spotlight.dart';

Future<void> indexItem() async {
  await CoreSpotlight.instance.indexSearchableItems([
    SpotlightSearchElement(
              uniqueIdentifier: "your_unique_identifier",
              attributeSet: CoreSpotlightItemAttributeSet(
                UTType.item,
                title: "My first entry!",
                contentDescription: "A descriptive description",
                keywords: ["awesome", "flutter", "spotlight", "My cool app"],
              ),
            )
  ]);
}
```

To remove them, you can do the following:

```dart
import 'package:flutter_apple_spotlight/flutter_apple_spotlight.dart';

Future<void> removeItem() async {
    // Remove a specific identifier
    await CoreSpotlight.instance.deleteAll(identifier: ["your_unique_identifier"]);
    // Or remove everything
    await CoreSpotlight.instance.deleteAll();
}
```

#### Handling Spotlight items

To handle Spotlight items being opened, you can set up a callback to be notified when an activity is continued:

```dart
void main() {
    CoreSpotlight.instance.init(
      callback: (item) async {
        print(item.uniqueIdentifier);
      },
    );
  
    runApp(MyApp());
}
```

This callback will be triggered whenever a Spotlight activity is detected, allowing you update the app accordingly.

## Contributions

Contributions are welcome! Please submit issues and pull requests to the [GitHub repository](https://github.com/HarryDeKat/flutter_apple_spotlight).

## License

This project is licensed under the MIT License. See the [LICENSE](https://github.com/your_username/flutter_apple_spotlight/blob/main/LICENSE) file for details.