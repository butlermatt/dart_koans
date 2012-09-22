#library('dart_koans');

#import('package:unittest/unittest.dart');
#import('config_colors.dart', prefix: 'colors');
#import('dart:io');

const _____ = '<Fill in Value>';

/// A [Matcher] that matches any [num] instance
const Matcher isNum = const isInstanceOf<num>('num');

/// A [Matcher] that matches any [int] instance
const Matcher isInt = const isInstanceOf<int>('int');

/// A [Matcher] that matches any [double] instance
const Matcher isDouble = const isInstanceOf<double>('double');

/// A [Matcher] that matches any [String] instance
const Matcher isString =  const isInstanceOf<String>('String');

/// A [Matcher] that matches any non [num] instance
const Matcher isNotNum = const isNotInstanceOf<num>('num');

/// A [Matcher] that matches any non [int] instance
const Matcher isNotInt = const isNotInstanceOf<int>('int');

/// A [Matcher] that matches any non [double] instance
const Matcher isNotDouble = const isNotInstanceOf<double>('double');

/// A [Matcher] that matches any non [num] instance
const Matcher isNotString = const isNotInstanceOf<String>('String');


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
  final PATH = 'lib/src/';
  
  String get name => 'Koans';
  
  void onStart() {
    print('Beginning the path to enlightenment...');
  }
  
  void onDone(int passed, int failed, int errors, List<TestCase> results,
              String uncaughtError) {
    var total = passed + failed + errors;
    print('Process: ${colors.DK_GREEN('$passed tests have been passed')}. '
        '${colors.DK_RED('${total - passed} remain.')}');
    
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
      
      print('Failed at: ${fail.description}');
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
