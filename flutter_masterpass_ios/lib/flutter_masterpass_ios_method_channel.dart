import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_masterpass_ios_platform_interface.dart';

/// An implementation of [FlutterMasterpassIosPlatform] that uses method channels.
class MethodChannelFlutterMasterpassIos extends FlutterMasterpassIosPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_masterpass_ios');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
