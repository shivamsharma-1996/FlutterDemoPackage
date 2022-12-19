import 'package:flutter_test/flutter_test.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:fluttertoast/fluttertoast_platform_interface.dart';
import 'package:fluttertoast/fluttertoast_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFluttertoastPlatform 
    with MockPlatformInterfaceMixin
    implements FluttertoastPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FluttertoastPlatform initialPlatform = FluttertoastPlatform.instance;

  test('$MethodChannelFluttertoast is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFluttertoast>());
  });

  test('getPlatformVersion', () async {
    Fluttertoast fluttertoastPlugin = Fluttertoast();
    MockFluttertoastPlatform fakePlatform = MockFluttertoastPlatform();
    FluttertoastPlatform.instance = fakePlatform;
  
    expect(await fluttertoastPlugin.getPlatformVersion(), '42');
  });
}
