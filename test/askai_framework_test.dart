import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:askai_framework/askai_framework.dart';

void main() {
  const MethodChannel channel = MethodChannel('askai_framework');

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
    expect(await AskaiFramework.platformVersion, '42');
  });
}
