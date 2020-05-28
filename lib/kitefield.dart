import 'dart:async';

import 'package:flutter/services.dart';

class Kitefield {
  static const MethodChannel _channel =
      const MethodChannel('kitefield');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
