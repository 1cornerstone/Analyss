import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'analyss_method_channel.dart';

abstract class AnalyssPlatform extends PlatformInterface {
  /// Constructs a AnalyssPlatform.
  AnalyssPlatform() : super(token: _token);

  static final Object _token = Object();

  static AnalyssPlatform _instance = MethodChannelAnalyss();

  /// The default instance of [AnalyssPlatform] to use.
  ///
  /// Defaults to [MethodChannelAnalyss].
  static AnalyssPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [AnalyssPlatform] when
  /// they register themselves.
  static set instance(AnalyssPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
