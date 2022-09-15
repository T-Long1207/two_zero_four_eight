import 'package:flutter_test/flutter_test.dart';
import 'package:two_zero_four_eight/two_zero_four_eight.dart';
import 'package:two_zero_four_eight/two_zero_four_eight_platform_interface.dart';
import 'package:two_zero_four_eight/two_zero_four_eight_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockTwoZeroFourEightPlatform 
    with MockPlatformInterfaceMixin
    implements TwoZeroFourEightPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final TwoZeroFourEightPlatform initialPlatform = TwoZeroFourEightPlatform.instance;

  test('$MethodChannelTwoZeroFourEight is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelTwoZeroFourEight>());
  });

  test('getPlatformVersion', () async {
    TwoZeroFourEight twoZeroFourEightPlugin = TwoZeroFourEight();
    MockTwoZeroFourEightPlatform fakePlatform = MockTwoZeroFourEightPlatform();
    TwoZeroFourEightPlatform.instance = fakePlatform;
  
    expect(await twoZeroFourEightPlugin.getPlatformVersion(), '42');
  });
}
