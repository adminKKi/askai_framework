
import 'dart:async';

import 'package:flutter/services.dart';

class AskaiFramework {
  static const MethodChannel _channel =
      const MethodChannel('askai_framework');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
