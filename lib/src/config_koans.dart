#library('dart_koans');

#import('package:unittest/unittest.dart');
#import('config_colors.dart', prefix: 'colors');
#import('dart:io');

/// A [Matcher] that matches any [num] value
const Matcher isNum = const _isNum();

class _isNum extends BaseMatcher {
  const _isNum();
  bool matches(item, MatchState matchState) => item is num;
  Description describe(Description description) =>
      description.add('num');
}

/// A [Matcher] that maches any [int] value
const Matcher isInt = const _isInt();

class _isInt extends BaseMatcher {
  const _isInt();
  bool matches(item, MatchState matchState) => item is int;
  Description describe(Description description) =>
      description.add('int');
}

/// A [Matcher] that maches any [double] value
const Matcher isDouble = const _isDouble();

class _isDouble extends BaseMatcher {
  const _isDouble();
  bool matches(item, MatchState matchState) => item is double;
  Description describe(Description description) =>
      description.add('double');
}

/// A [Matcher] that maches any [String] value
const Matcher isString = const _isString();

class _isString extends BaseMatcher {
  const _isString();
  bool matches(item, MatchState matchState) => item is String;
  Description describe(Description description) =>
      description.add('String');
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
