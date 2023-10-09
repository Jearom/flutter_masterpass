import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_masterpass_ios/flutter_masterpass_ios.dart';
import 'package:flutter_masterpass_ios/flutter_masterpass_ios_platform_interface.dart';
import 'package:flutter_masterpass_ios/flutter_masterpass_ios_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterMasterpassIosPlatform
    with MockPlatformInterfaceMixin
    implements FlutterMasterpassIosPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterMasterpassIosPlatform initialPlatform = FlutterMasterpassIosPlatform.instance;

  test('$MethodChannelFlutterMasterpassIos is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterMasterpassIos>());
  });

  test('getPlatformVersion', () async {
    FlutterMasterpassIos flutterMasterpassIosPlugin = FlutterMasterpassIos();
    MockFlutterMasterpassIosPlatform fakePlatform = MockFlutterMasterpassIosPlatform();
    FlutterMasterpassIosPlatform.instance = fakePlatform;

    expect(await flutterMasterpassIosPlugin.getPlatformVersion(), '42');
  });
}
