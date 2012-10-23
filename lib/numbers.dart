part of dart_koans;

start_here() {
  group('Introduction -', () {
    test('First steps', () {
      /*
       * This is your first test. Throughout these files you will be
       * tasked with correcting each test to proceed to the next.
       * It is recommended you only correct one component at a time
       * and re-run the application to verify your fix.
       * Below, change _____ to be false and try to proceed.
       */
        expect(_____, false);
      });
    test('Beginning', () {
      /*
       * The comparison on the end will not always be a specific
       * type, however between the context, comments, and most
       * importantly, the error message you receive when you try
       * to run the program, should tell you what you need to do
       * to make the test pass.
       */
      expect(_____, isTrue);
    });
  });
  group('Numbers -', () {
    test('num - whole numbers', () {
      /*
       * Dart provides optional types to define variables. 
       * The num type holds numbers including whole numbers
       */
      num number = 5;
      expect(_____, isNum);
    });
    test('num - decimal numbers', () {
      /*
       * The num type can also hold decimal numbers
       */
      num number = 5.3;
      expect(_____, isNum);
    });
    test('var', () {
      /*
       * The optional type system means that when declaring 
       * variables, you may declare them as 'var' (short
       * for variable) or as a specific type.
       */
      var number = 5;
      expect(_____, isNum);
    });
    group('Integers -', () {
      test('int', () {
        /*
         * Dart also has more specific types of numbers. In
         * particular dart as int (Integers) available for
         * whole numbers.
         */
        int number = 5;
        expect(_____, isInt);
      });
      test('num', () {
        /*
         * The int type is a subclass of the num type.
         */
        int number = 5;
        expect(_____, isNum);
      });
      test('var', () {
        /*
         * Dart can automagically infer types even if they
         * were not declared.
         */
        var number = 5;
        expect(_____, isInt);
      });
      test('not decimal', () {
        /*
         * Note that decimal numbers are not Integers (int)
         */
        var number = 5.3;
        expect(_____, isNotInt);
      });
    });
    group('Decimals -', () {
      test('double', () {
        /*
         * The other specific type of a number is a double.
         * double represents any decimal or floating point
         * number. 
         */
        double number = 5.3;
        expect(_____, isDouble);
      });
      test('num', () {
        /*
         * Just like int's, double's are a subclass of num.
         */
        double number = 5.3;
        expect(_____, isNum);
      });
      test('var', () {
        /*
         * And like int's, the dart VM can detect that a var
         * is actually holding a double.
         */
        var number = 5.3;
        expect(_____, isDouble);
      });
      test('not integer', () {
        /*
         * And remember that integers are not doubles.
         */
        var number = 5;
        expect(_____, isNotDouble);
      });
    });
    test('which type', () {
      /*
       * So based on what we learned above, in the check
       * below replace _____ with either: isInt or isDouble
       * 
       * Note: while we have covered int and double, it is
       * generally more idiomatic dart to either use 'num'
       * or 'var'.
       */
      var number = 5.0;
      expect(number, _____);
    });
  });
}
