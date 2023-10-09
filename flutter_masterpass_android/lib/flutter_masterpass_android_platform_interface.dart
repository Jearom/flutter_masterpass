import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_masterpass_android_method_channel.dart';

abstract class FlutterMasterpassAndroidPlatform extends PlatformInterface {
  /// Constructs a FlutterMasterpassAndroidPlatform.
  FlutterMasterpassAndroidPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterMasterpassAndroidPlatform _instance = MethodChannelFlutterMasterpassAndroid();

  /// The default instance of [FlutterMasterpassAndroidPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterMasterpassAndroid].
  static FlutterMasterpassAndroidPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterMasterpassAndroidPlatform] when
  /// they register themselves.
  static set instance(FlutterMasterpassAndroidPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
