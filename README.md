# system_settings_krutus

A flutter plugin to open system settings based on their relevant/equivalent string constants in Android.

`iOS version is in development phase`

## Getting Started

Add this to your package's pubspec.yaml file:

```
dependencies:
  system_settings_krutus: 0.0.1
```
Next, import the package into your dart code:

```dart
import 'package:system_settings_krutus/system_settings_krutus.dart';
```

## Example

Here is the example:

```dart
SystemSettingsKrutus().openSettings(
  AndroidSettingsConstant.mainSettings,
)
```

## Bugs and feature requests

Have a bug or a feature request? Please first search for existing and closed issues. If your problem or idea is not addressed yet, [please open a new issue](https://github.com/krutusltd/system_settings_krutus/issues).

