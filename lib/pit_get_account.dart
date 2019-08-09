import 'dart:async';

import 'package:flutter/services.dart';

class PitGetAccount {
  static const MethodChannel _channel = const MethodChannel('pit_get_account');

  static Future<List<String>> getAccount() async {
    var a = await _channel.invokeMethod("getAccount");
    List<String> result = List.from(a);
    return result;
  }
}