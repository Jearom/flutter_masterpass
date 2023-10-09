import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_masterpass_platform_interface.dart';

/// An implementation of [FlutterMasterpassPlatform] that uses method channels.
class MethodChannelFlutterMasterpass extends FlutterMasterpassPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_masterpass');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
