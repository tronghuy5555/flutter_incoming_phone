import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_incoming_phone/flutter_incoming_phone.dart';
import 'package:flutter_incoming_phone/flutter_incoming_phone_platform_interface.dart';
import 'package:flutter_incoming_phone/flutter_incoming_phone_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterIncomingPhonePlatform
    with MockPlatformInterfaceMixin
    implements FlutterIncomingPhonePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterIncomingPhonePlatform initialPlatform = FlutterIncomingPhonePlatform.instance;

  test('$MethodChannelFlutterIncomingPhone is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterIncomingPhone>());
  });

  test('getPlatformVersion', () async {
    FlutterIncomingPhone flutterIncomingPhonePlugin = FlutterIncomingPhone();
    MockFlutterIncomingPhonePlatform fakePlatform = MockFlutterIncomingPhonePlatform();
    FlutterIncomingPhonePlatform.instance = fakePlatform;

    expect(await flutterIncomingPhonePlugin.getPlatformVersion(), '42');
  });
}
