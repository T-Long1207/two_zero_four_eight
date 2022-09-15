import 'package:flutter/services.dart';

const MethodChannel _channel = MethodChannel('two_zero_four_eight');

/// Scanning Bar Code or QR Code return content
Future<String?> play() async => await _channel.invokeMethod('play');
