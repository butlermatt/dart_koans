#library('dart_koans');

#import('package:unittest/unittest.dart');
#import('dart:io');

class ConfigKoans extends Configuration {
  String get name => 'Koans';
  
  void onDone(int passed, int failed, int errors, List<TestCase> results,
              String uncaughtError) {
    print('Passed: $passed');
    print('Failed: $failed');
    print('Errors: $errors');
    
    if(failed > 0) {
      var fail;
      for(var test in results) {
        if(test.result == 'fail') {
          fail = test;
          break;
        }
      }
      print('Failed at: ${fail.currentGroup} ${fail.description}');
      print(fail.message);
      print('Trace: ${fail.stackTrace}');
    }
    
    
    if(errors != 0) {
      print('You have not yet reached enlightenment.');
    }
    
    exit(0);
  }
  
}
