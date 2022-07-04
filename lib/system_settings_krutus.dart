import 'system_settings_krutus_platform_interface.dart';

class SystemSettingsKrutus {
  Future<String?> getPlatformVersion() {
    return SystemSettingsKrutusPlatform.instance.getPlatformVersion();
  }

  Future<bool> openSettings(String intent) {
    return SystemSettingsKrutusPlatform.instance.openSettings(intent);
  }
}
