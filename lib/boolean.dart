part of dart_koans;

void using_boolean() {
  group('Boolean -', () {
    group('Declaring -', () {
      test('bool', () {
        /*
         * Perhaps the simplest type in Dart is the boolean (bool)
         * Booleans accept only true or false values.
         */
        bool boolean = true;
        expect(_____, isTrue);
      });
      test('var', () {
        /*
         * We can also use var and allow the vm to correctly
         * infer the type for us.
         */
        var boolean = _____;
        expect(boolean, isBool);
      });
    });
    group('Values -', () {
      test('0 not false', () {
        /*
         * Unlike many languages, the value 0 does not
         * automatically mean false. As a result 0 cannot
         * be used as a boolean value. We'll see why this
         * is important soon.
         * 
         * (Strictly speaking, this is not 100% accurate,
         * however it is only noticable when running in 
         * unchecked mode, in which case everything except
         * true, is false. See the language specification
         * for details: http://goo.gl/gBUIZ )
         */
        var boolean = 0;
        expect(_____, isNotBool);
      });
      test('1 not true', () {
        /*
         * In many languages 1, or any positive integer,
         * is considered to be 'true'. However this is 
         * also not the case in Dart.
         */
        var boolean = 1;
        expect(_____, isNotBool);
      });
      test('negated', () {
        /*
         * As a result of the two above facts, only a
         * boolean value may be negated.
         * Replace _____ with the correct boolean value.
         */
        var boolean = true;
        boolean = !boolean;
        expect(boolean, equals(_____));
      });
    });
  });
}