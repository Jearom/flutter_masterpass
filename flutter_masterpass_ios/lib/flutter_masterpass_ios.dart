
import 'flutter_masterpass_ios_platform_interface.dart';

class FlutterMasterpassIos {
  Future<String?> getPlatformVersion() {
    return FlutterMasterpassIosPlatform.instance.getPlatformVersion();
  }
}
