
import 'flutter_masterpass_android_platform_interface.dart';

class FlutterMasterpassAndroid {
  Future<String?> getPlatformVersion() {
    return FlutterMasterpassAndroidPlatform.instance.getPlatformVersion();
  }
}
