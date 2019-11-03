import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:horizontal_date_picker/horizontal_date_picker.dart';

void main() {
  const MethodChannel channel = MethodChannel('horizontal_date_picker');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
  });
}
