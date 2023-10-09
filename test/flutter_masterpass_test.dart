import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_masterpass/flutter_masterpass.dart';
import 'package:flutter_masterpass/flutter_masterpass_platform_interface.dart';
import 'package:flutter_masterpass/flutter_masterpass_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterMasterpassPlatform
    with MockPlatformInterfaceMixin
    implements FlutterMasterpassPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterMasterpassPlatform initialPlatform = FlutterMasterpassPlatform.instance;

  test('$MethodChannelFlutterMasterpass is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterMasterpass>());
  });

  test('getPlatformVersion', () async {
    FlutterMasterpass flutterMasterpassPlugin = FlutterMasterpass();
    MockFlutterMasterpassPlatform fakePlatform = MockFlutterMasterpassPlatform();
    FlutterMasterpassPlatform.instance = fakePlatform;

    expect(await flutterMasterpassPlugin.getPlatformVersion(), '42');
  });
}
