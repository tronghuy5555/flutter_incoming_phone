import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_incoming_phone_method_channel.dart';

abstract class FlutterIncomingPhonePlatform extends PlatformInterface {
  /// Constructs a FlutterIncomingPhonePlatform.
  FlutterIncomingPhonePlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterIncomingPhonePlatform _instance = MethodChannelFlutterIncomingPhone();

  /// The default instance of [FlutterIncomingPhonePlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterIncomingPhone].
  static FlutterIncomingPhonePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterIncomingPhonePlatform] when
  /// they register themselves.
  static set instance(FlutterIncomingPhonePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
