import 'dart:convert';
import 'dart:io';

String readFileStringSync(String name) =>
    File('test/test_resources/$name').readAsStringSync();

Future<String> readFileStringAsync(String name) =>
    File('test/test_resources/$name').readAsString();

Map<String, dynamic> readJson(String name) {
  final json = jsonDecode(readFileStringSync(name));
  return json as Map<String, dynamic>;
}
