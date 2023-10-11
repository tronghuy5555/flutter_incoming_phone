import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_incoming_phone_platform_interface.dart';

/// An implementation of [FlutterIncomingPhonePlatform] that uses method channels.
class MethodChannelFlutterIncomingPhone extends FlutterIncomingPhonePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_incoming_phone');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
