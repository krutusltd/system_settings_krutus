import 'package:flutter_test/flutter_test.dart';
import 'package:system_settings_krutus/system_settings_krutus.dart';
import 'package:system_settings_krutus/system_settings_krutus_platform_interface.dart';
import 'package:system_settings_krutus/system_settings_krutus_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockSystemSettingsKrutusPlatform
    with MockPlatformInterfaceMixin
    implements SystemSettingsKrutusPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');

  @override
  Future<bool> openSettings(String intent) {
    // TODO: implement openSettings
    throw UnimplementedError();
  }
}

void main() {
  final SystemSettingsKrutusPlatform initialPlatform =
      SystemSettingsKrutusPlatform.instance;

  test('$MethodChannelSystemSettingsKrutus is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelSystemSettingsKrutus>());
  });

  test('getPlatformVersion', () async {
    SystemSettingsKrutus systemSettingsKrutusPlugin = SystemSettingsKrutus();
    MockSystemSettingsKrutusPlatform fakePlatform =
        MockSystemSettingsKrutusPlatform();
    SystemSettingsKrutusPlatform.instance = fakePlatform;

    expect(await systemSettingsKrutusPlugin.getPlatformVersion(), '42');
  });
}
