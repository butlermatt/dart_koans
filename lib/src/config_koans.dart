#library('dart_koans');

#import('package:unittest/unittest.dart');
#import('config_colors.dart', prefix: 'colors');
#import('dart:io');

const _____ = '<Fill in Value>';

/// A [Matcher] that matches any [Object] instance
const Matcher isObject = const myInstanceOf<Object>('Object');

/// A [Matcher] that matches any [bool] instance
const Matcher isBool = const myInstanceOf<bool>('bool');

/// A [Matcher] that matches any [num] instance
const Matcher isNum = const myInstanceOf<num>('num');

/// A [Matcher] that matches any [int] instance
const Matcher isInt = const myInstanceOf<int>('int');

/// A [Matcher] that matches any [double] instance
const Matcher isDouble = const myInstanceOf<double>('double');

/// A [Matcher] that matches any [String] instance
const Matcher isString =  const myInstanceOf<String>('String');

/// A [Matcher] that matches any non [bool] instance
const Matcher isNotBool = const isNotInstanceOf<bool>('bool');

/// A [Matcher] that matches any non [num] instance
const Matcher isNotNum = const isNotInstanceOf<num>('num');

/// A [Matcher] that matches any non [int] instance
const Matcher isNotInt = const isNotInstanceOf<int>('int');

/// A [Matcher] that matches any non [double] instance
const Matcher isNotDouble = const isNotInstanceOf<double>('double');

/// A [Matcher] that matches any non [num] instance
const Matcher isNotString = const isNotInstanceOf<String>('String');

class myInstanceOf<T> extends BaseMatcher {
  final String _name;
  const myInstanceOf([name = 'specified type']) : this._name = name;
  bool matches(obj, MatchState matchState) { 
    if(obj == _____) return false;
    return obj is T;
  }
  // The description here is lame :-(
  Description describe(Description description) =>
      description.add('an instance of ${_name}');
}

class isNotInstanceOf<T> extends BaseMatcher {
  final String _name;
  const isNotInstanceOf([name = 'specified type']) : this._name = name;
  bool matches(obj, MatchState matchState) { 
    if(obj == _____) return false;
    return obj is! T;
  }
  // The description here is lame :-(
  Description describe(Description description) =>
      description.add('not an instance of ${_name}');
}


class ConfigKoans extends Configuration {
  final PATH = 'lib/';
  
  String get name => 'Koans';
  
  void onStart() {
    print('Beginning the path to enlightenment...');
  }
  
  void onDone(int passed, int failed, int errors, List<TestCase> results,
              String uncaughtError) {
    var total = passed + failed + errors;
    print('Process: ${colors.DK_GREEN('$passed tests have been passed')}. '
        '${colors.DK_RED('${total - passed} remain.')}\n');
    
    if(failed > 0) {
      var fail;
      for(var test in results) {
        if(test.result == 'fail' || test.result == 'error') {
          fail = test;
          break;
        }
      }
      
      var failLine = fail.stackTrace.split('\n')[3];
      var components = failLine.split('/').last();
      components = components.split(':');
      
      print('Failed at: ${colors.DK_YELLOW(fail.description)}');
      print(fail.message);
      print('Seek your answers in File:');
      print('${colors.DK_MAGENTA('$PATH${components[0]}')} ' 
        '(Line: ${components[1]} Column: ${components[2]}\n');
    } 
    
    if(errors + failed != 0) {
      print('You have not yet reached enlightenment.');
    }
    
    exit(0);
  }
}
