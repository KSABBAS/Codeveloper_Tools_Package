import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:flutter/services.dart';

abstract class CodeveloperToolsPlatform extends PlatformInterface {
  CodeveloperToolsPlatform() : super(token: _token);

  static final Object _token = Object();
  static CodeveloperToolsPlatform _instance = MethodChannelCodeveloperTools();

  static CodeveloperToolsPlatform get instance => _instance;

  static set instance(CodeveloperToolsPlatform instance) {
    PlatformInterface.verify(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}

class MethodChannelCodeveloperTools extends CodeveloperToolsPlatform {
  final MethodChannel _channel = const MethodChannel('codeveloper_tools');

  @override
  Future<String?> getPlatformVersion() async {
    return _channel.invokeMethod<String>('getPlatformVersion');
  }
}
