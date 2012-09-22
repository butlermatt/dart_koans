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
  group('Variables -', () {
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
        var variable = 5;
        expect(_____, isNum);
      });
    });
    group('Integers -', () {
      test('int', () {
        /*
         * Dart also has more specific types of numbers. In
         * particular dart as int (Integers) available for
         * whole numbers.
         */
        int integer = 5;
        expect(_____, isInt);
      });
      test('num', () {
        /*
         * The int type is a subclass of the num type.
         */
        int integer = 5;
        expect(_____, isNum);
      });
      test('var', () {
        /*
         * Dart can automagically infer types even if they
         * were not declared.
         */
        var variable = 5;
        expect(_____, isInt);
      });
      test('not decimal', () {
        /*
         * Note that decimal numbers are not Integers (int)
         */
        var decimal = 5.3;
        expect(_____, isNotInt);
      });
    });
  });
}
