import 'package:flutter/services.dart';

import '{{project}}_platform_interface.dart';

class MethodChannel{{.pascalCase()}} extends {{.pascalCase()}}Platform {
  static const MethodChannel _channel =
      const MethodChannel('{{project}}');

  @override
  Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
