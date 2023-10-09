import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_masterpass_android/flutter_masterpass_android.dart';
import 'package:flutter_masterpass_android/flutter_masterpass_android_platform_interface.dart';
import 'package:flutter_masterpass_android/flutter_masterpass_android_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterMasterpassAndroidPlatform
    with MockPlatformInterfaceMixin
    implements FlutterMasterpassAndroidPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterMasterpassAndroidPlatform initialPlatform = FlutterMasterpassAndroidPlatform.instance;

  test('$MethodChannelFlutterMasterpassAndroid is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterMasterpassAndroid>());
  });

  test('getPlatformVersion', () async {
    FlutterMasterpassAndroid flutterMasterpassAndroidPlugin = FlutterMasterpassAndroid();
    MockFlutterMasterpassAndroidPlatform fakePlatform = MockFlutterMasterpassAndroidPlatform();
    FlutterMasterpassAndroidPlatform.instance = fakePlatform;

    expect(await flutterMasterpassAndroidPlugin.getPlatformVersion(), '42');
  });
}
