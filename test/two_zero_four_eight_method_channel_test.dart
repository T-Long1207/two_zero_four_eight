import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:two_zero_four_eight/two_zero_four_eight_method_channel.dart';

void main() {
  MethodChannelTwoZeroFourEight platform = MethodChannelTwoZeroFourEight();
  const MethodChannel channel = MethodChannel('two_zero_four_eight');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
