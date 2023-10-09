import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_masterpass_method_channel.dart';

abstract class FlutterMasterpassPlatform extends PlatformInterface {
  /// Constructs a FlutterMasterpassPlatform.
  FlutterMasterpassPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterMasterpassPlatform _instance = MethodChannelFlutterMasterpass();

  /// The default instance of [FlutterMasterpassPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterMasterpass].
  static FlutterMasterpassPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterMasterpassPlatform] when
  /// they register themselves.
  static set instance(FlutterMasterpassPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
