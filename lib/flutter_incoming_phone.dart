
import 'flutter_incoming_phone_platform_interface.dart';

class FlutterIncomingPhone {
  Future<String?> getPlatformVersion() {
    return FlutterIncomingPhonePlatform.instance.getPlatformVersion();
  }
}
