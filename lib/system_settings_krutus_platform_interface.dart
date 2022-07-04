import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'system_settings_krutus_method_channel.dart';

abstract class SystemSettingsKrutusPlatform extends PlatformInterface {
  /// Constructs a SystemSettingsKrutusPlatform.
  SystemSettingsKrutusPlatform() : super(token: _token);

  static final Object _token = Object();

  static SystemSettingsKrutusPlatform _instance =
      MethodChannelSystemSettingsKrutus();

  /// The default instance of [SystemSettingsKrutusPlatform] to use.
  ///
  /// Defaults to [MethodChannelSystemSettingsKrutus].
  static SystemSettingsKrutusPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [SystemSettingsKrutusPlatform] when
  /// they register themselves.
  static set instance(SystemSettingsKrutusPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<bool> openSettings(String intent) async {
    return MethodChannelSystemSettingsKrutus().openSettings(intent);
  }
}
