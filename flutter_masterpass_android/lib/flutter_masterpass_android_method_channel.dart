import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_masterpass_android_platform_interface.dart';

/// An implementation of [FlutterMasterpassAndroidPlatform] that uses method channels.
class MethodChannelFlutterMasterpassAndroid extends FlutterMasterpassAndroidPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_masterpass_android');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
