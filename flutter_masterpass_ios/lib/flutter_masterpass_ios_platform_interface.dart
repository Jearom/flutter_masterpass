import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_masterpass_ios_method_channel.dart';

abstract class FlutterMasterpassIosPlatform extends PlatformInterface {
  /// Constructs a FlutterMasterpassIosPlatform.
  FlutterMasterpassIosPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterMasterpassIosPlatform _instance = MethodChannelFlutterMasterpassIos();

  /// The default instance of [FlutterMasterpassIosPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterMasterpassIos].
  static FlutterMasterpassIosPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterMasterpassIosPlatform] when
  /// they register themselves.
  static set instance(FlutterMasterpassIosPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
