import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'fluttertoast_platform_interface.dart';

/// An implementation of [FluttertoastPlatform] that uses method channels.
class MethodChannelFluttertoast extends FluttertoastPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('fluttertoast');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
