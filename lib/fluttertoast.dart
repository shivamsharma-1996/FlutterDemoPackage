
import 'fluttertoast_platform_interface.dart';

class Fluttertoast {
  Future<String?> getPlatformVersion() {
    return FluttertoastPlatform.instance.getPlatformVersion();
  }
}
