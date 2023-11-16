import 'package:flutter_test/flutter_test.dart';
import 'package:analyss/analyss.dart';
import 'package:analyss/analyss_platform_interface.dart';
import 'package:analyss/analyss_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockAnalyssPlatform
    with MockPlatformInterfaceMixin
    implements AnalyssPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final AnalyssPlatform initialPlatform = AnalyssPlatform.instance;

  test('$MethodChannelAnalyss is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelAnalyss>());
  });

  // test('getPlatformVersion', () async {
  //   Analyss analyssPlugin = Analyss();
  //   MockAnalyssPlatform fakePlatform = MockAnalyssPlatform();
  //   AnalyssPlatform.instance = fakePlatform;
  //
  //   expect(await analyssPlugin.getPlatformVersion(), '42');
  // });
}
