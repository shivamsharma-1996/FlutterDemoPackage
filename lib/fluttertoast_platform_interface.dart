import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'fluttertoast_method_channel.dart';

abstract class FluttertoastPlatform extends PlatformInterface {
  /// Constructs a FluttertoastPlatform.
  FluttertoastPlatform() : super(token: _token);

  static final Object _token = Object();

  static FluttertoastPlatform _instance = MethodChannelFluttertoast();

  /// The default instance of [FluttertoastPlatform] to use.
  ///
  /// Defaults to [MethodChannelFluttertoast].
  static FluttertoastPlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FluttertoastPlatform] when
  /// they register themselves.
  static set instance(FluttertoastPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
