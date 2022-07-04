import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:system_settings_krutus/constants.dart';

import 'system_settings_krutus_platform_interface.dart';

/// An implementation of [SystemSettingsKrutusPlatform] that uses method channels.
class MethodChannelSystemSettingsKrutus extends SystemSettingsKrutusPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('system_settings_krutus');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  Future<bool> openSettings(String intent) async {
    try {
      return await methodChannel.invokeMethod('main', {
        "package": AndroidSettingsConstant.mainSettings,
        "intent": intent,
      });
    } catch (e) {
      print(e);
    }
    return false;
  }
}
