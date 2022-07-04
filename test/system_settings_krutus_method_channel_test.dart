import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:system_settings_krutus/system_settings_krutus_method_channel.dart';

void main() {
  MethodChannelSystemSettingsKrutus platform = MethodChannelSystemSettingsKrutus();
  const MethodChannel channel = MethodChannel('system_settings_krutus');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
