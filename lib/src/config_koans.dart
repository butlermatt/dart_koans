#library('dart_koans');

#import('package:unittest/unittest.dart');
#import('dart:io');

class ConfigKoans extends Configuration {
  String get name => 'Koans';
  
  void onDone(int passed, int failed, int errors, List<TestCase> results,
              String uncaughtError) {
    var total = passed + failed + errors;
    print('Process: $passed tests have been passed. ${total - passed} remain.');
    
    if(failed > 0) {
      var fail;
      for(var test in results) {
        if(test.result == 'fail') {
          fail = test;
          break;
        }
      }
      
//      print('Trace: ${fail.stackTrace}');
      print('Failed at: ${fail.currentGroup} ${fail.description}');
      print(fail.message);
    }
    
    
    if(errors != 0) {
      print('You have not yet reached enlightenment.');
    }
    
    exit(0);
  }
  
}
