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
    group('Optional Types -', () {
      test('var', () {
        /*
         * Dart uses an optional type system. This means that when
         * declaring variables, you may declare them as 'var' (short
         * for variable) or as a specific type.
         */
        var variable = 5;
        expect(_____, equals(5));
      });
      test('num - whole numbers', () {
        /*
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
    });
  });
}
