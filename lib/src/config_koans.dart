library koans_config;

import 'package:unittest/unittest.dart' as ut;
import 'package:path/path.dart' as path;
import 'config_colors.dart' as colors;
import 'dart:io';

const _____ = '<Fill in Value>';

/// A [Matcher] that matches any [Object] instance
const ut.Matcher isObject = const myInstanceOf<Object>('Object');

/// A [Matcher] that matches any [bool] instance
const ut.Matcher isBool = const myInstanceOf<bool>('bool');

/// A [Matcher] that matches any [num] instance
const ut.Matcher isNum = const myInstanceOf<num>('num');

/// A [Matcher] that matches any [int] instance
const ut.Matcher isInt = const myInstanceOf<int>('int');

/// A [Matcher] that matches any [double] instance
const ut.Matcher isDouble = const myInstanceOf<double>('double');

/// A [Matcher] that matches any [String] instance
const ut.Matcher isString =  const myInstanceOf<String>('String');

/// A [Matcher] that matches any [List] instance
//const ut.Matcher isList =  const myInstanceOf<List>('List');

/// A [Matcher] that matches any non [bool] instance
const ut.Matcher isNotBool = const isNotInstanceOf<bool>('bool');

/// A [Matcher] that matches any non [num] instance
const ut.Matcher isNotNum = const isNotInstanceOf<num>('num');

/// A [Matcher] that matches any non [int] instance
const ut.Matcher isNotInt = const isNotInstanceOf<int>('int');

/// A [Matcher] that matches any non [double] instance
const ut.Matcher isNotDouble = const isNotInstanceOf<double>('double');

/// A [Matcher] that matches any non [num] instance
const ut.Matcher isNotString = const isNotInstanceOf<String>('String');

class myInstanceOf<T> extends ut.isInstanceOf<T> {
  final String _name;
  
  const myInstanceOf([name = 'specified type']): _name = name;
  
  bool matches(obj, Map matchState) { 
    if(obj == _____) return false;
    return obj is T;
  }
  // The description here is lame :-(
  ut.Description describe(ut.Description description) =>
      description.add('an instance of ${_name}');
}

class isNotInstanceOf<T> extends ut.isInstanceOf<T> {
  final String _name;
  const isNotInstanceOf([name = 'specified type']) : this._name = name;
  bool matches(obj, Map matchState) { 
    if(obj == _____) return false;
    return obj is! T;
  }
  // The description here is lame :-(
  ut.Description describe(ut.Description description) =>
      description.add('not an instance of ${_name}');
}


class ConfigKoans extends ut.SimpleConfiguration {
  final LIB_DIR = 'lib/';
  
  ConfigKoans() {
    var osStr = Platform.operatingSystem;
    if(osStr != 'windows') {
      colors.useAnsi = true;
    }
  }
  
  String get name => 'Koans';
  
  void onStart() {
    print('\n\t\t${colors.LT_WHITE('Dart Koans')}\n');
    print('Beginning the path to enlightenment...');
  }
  
  void onSummary(int passed, int failed, int errors, List<ut.TestCase> results,
              String uncaughtError) {
    var total = passed + failed + errors;
    print('Progress: ${colors.DK_GREEN('$passed tests have been passed')}. '
        '${colors.DK_RED('${total - passed} remain.')}\n');
    if(failed > 0) {
      var fail;
      for(var test in results) {
        if(test.result == 'fail' || test.result == 'error') {
          fail = test;
          break;
        }
      }
      
      var failLines = fail.stackTrace.toString().trim().split('\n');
      var failLine = failLines.firstWhere((el) {
        return el.contains('dart_koans');
      });
      var components = failLine.split('/').last;
      components = components.split(' ');
      var fileName = components[0];
      components = components[1].split(':');

      var context = new path.Context(style: path.Style.windows);
      var lookInFile = context.join(LIB_DIR, fileName);
      
      print('Failed at: ${colors.DK_YELLOW(fail.description)}');
      print(fail.message);
      print('Seek your answers in File:');
      print('${colors.DK_MAGENTA(lookInFile) } ' 
        '(Line: ${components[0]} Column: ${components[1]})\n');
    } 
    
    if(errors + failed != 0) {
      print('You have not yet reached enlightenment.');
    } else {
      print('Congradulations! You\'ve reached enlightenment');
    }
    
    exit(0);
  }
}
