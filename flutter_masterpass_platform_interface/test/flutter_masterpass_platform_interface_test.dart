import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_masterpass_platform_interface/flutter_masterpass_platform_interface.dart';
import 'package:flutter_masterpass_platform_interface/flutter_masterpass_platform_interface_platform_interface.dart';
import 'package:flutter_masterpass_platform_interface/flutter_masterpass_platform_interface_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterMasterpassPlatformInterfacePlatform
    with MockPlatformInterfaceMixin
    implements FlutterMasterpassPlatformInterfacePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterMasterpassPlatformInterfacePlatform initialPlatform = FlutterMasterpassPlatformInterfacePlatform.instance;

  test('$MethodChannelFlutterMasterpassPlatformInterface is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterMasterpassPlatformInterface>());
  });

  test('getPlatformVersion', () async {
    FlutterMasterpassPlatformInterface flutterMasterpassPlatformInterfacePlugin = FlutterMasterpassPlatformInterface();
    MockFlutterMasterpassPlatformInterfacePlatform fakePlatform = MockFlutterMasterpassPlatformInterfacePlatform();
    FlutterMasterpassPlatformInterfacePlatform.instance = fakePlatform;

    expect(await flutterMasterpassPlatformInterfacePlugin.getPlatformVersion(), '42');
  });
}
