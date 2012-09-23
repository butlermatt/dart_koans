#library('dart_koans');

#import('package:unittest/unittest.dart');
#import('package:dart_koans/src/config_koans.dart');
#import('package:dart_koans/src/config_colors.dart', prefix: 'colors');

#source('package:dart_koans/src/koans_numbers.dart');
#source('package:dart_koans/src/koans_strings.dart');

const _____ = '<Fill in Value>';

void main() {
  // Setup configuration for unittest
  var unitConf = new ConfigKoans();
  configure(unitConf);
  
  print('\n\t\t${colors.LT_WHITE('Dart Koans')}\n');
  
  start_here();
  using_strings();
}