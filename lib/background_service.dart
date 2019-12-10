import 'dart:async';

import 'package:flutter/services.dart';

class BackgroundService {
  static const MethodChannel _channel =
      const MethodChannel('de.movementfam.webapp/backgroundService');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
