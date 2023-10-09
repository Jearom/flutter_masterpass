import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_masterpass_platform_interface_method_channel.dart';

abstract class FlutterMasterpassPlatformInterfacePlatform extends PlatformInterface {
  /// Constructs a FlutterMasterpassPlatformInterfacePlatform.
  FlutterMasterpassPlatformInterfacePlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterMasterpassPlatformInterfacePlatform _instance = MethodChannelFlutterMasterpassPlatformInterface();

  /// The default instance of [FlutterMasterpassPlatformInterfacePlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterMasterpassPlatformInterface].
  static FlutterMasterpassPlatformInterfacePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterMasterpassPlatformInterfacePlatform] when
  /// they register themselves.
  static set instance(FlutterMasterpassPlatformInterfacePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
