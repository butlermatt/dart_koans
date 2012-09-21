#!/usr/bin/env dart
#library('dart_koans');

#import('package:unittest/unittest.dart');
#import('package:dart_koans/src/config_koans.dart');

#source('package:dart_koans/src/koans_start.dart');

const _____ = '<Fill in Value>';

void main() {
  // Setup configuration for unittest
  var unitConf = new ConfigKoans();
  configure(unitConf);
  
  print('Welcome to Dart Koans.');
  print('This package is inspired by Ruby Koans.\n');
  
  start_here();
}