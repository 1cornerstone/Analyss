import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'analyss_platform_interface.dart';

/// An implementation of [AnalyssPlatform] that uses method channels.
class MethodChannelAnalyss extends AnalyssPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('analyss');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
