library dart_koans;

import 'package:unittest/unittest.dart';
import 'package:dart_koans/src/config_koans.dart';

import 'dart:isolate';

part 'package:dart_koans/numbers.dart';
part 'package:dart_koans/boolean.dart';
part 'package:dart_koans/strings.dart';
part 'package:dart_koans/objects.dart';
part 'package:dart_koans/lists.dart';

const _____ = '<Fill in Value>';

void main() {
  // Setup configuration for unittest
  var unitConf = new ConfigKoans();
  unittestConfiguration = unitConf;
  
  start_here();
  using_boolean();
  using_strings();
  using_objects();
  using_lists();
  
}