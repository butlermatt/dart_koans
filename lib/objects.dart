part of dart_koans;

void using_objects() {
  group('Objects -', () {
    group('Everything -', () {
      test('Introduction', () {
        /*
         * In Dart the language is not just Object Oriented
         * but everything in Dart is an object.
         */
        var number = 5;
        expect(_____, isObject);
      });
      test('Simple Types', () {
        /*
         * Even simple types like num, int, double and bool
         * are objects as well.
         */
        bool boolean = true;
        expect(_____, isObject);
      });
      test('Even literals', () {
        /*
         * Even literals are objects in Dart. Check if
         * 5 isNum and if it isObject.
         * 
         * Note that the isXxxx notation is the the correct
         * way of checking a type. We'll look at that later
         * as well.
         */
        expect(5, _____);
      });
    });
    group('Methods -', () {
      test('toString()', () {
        /*
         * Because everything is an object, it means that we
         * can call their methods to interact with them.
         * Even operators such as ==, =, +, -, etc are methods
         * though we can't call them explicity when we do
         * something like 5 + 3 it's the same as 5.+(3);
         */
        expect(5.32.toString(), equals('_____'));
      });
      test('Type specific', () {
        /* 
         * In addition to the shared methods of Object, each
         * 'type' (or Class as we will see later) has its own
         * selection of methods as well. Such as a check to
         * see if a number is positive or negative.
         * Hint: isNegative is a property which returns a 
         * boolean (true/false) value.
         */
        var number = -3;
        expect(number.isNegative, equals(_____));
      });
      test('NoSuchMethodError', () {
        /*
         * In the event you call a method on an object which
         * is not implemented, the object will generate (throw)
         * a NoSuchMethodError. Later on we'll look at how we
         * can catch errors, as well some special things we
         * can do with NoSuchMethod.
         */
        var boolean = true;
        var broken = () => boolean.causeError();
        expect(_____, throwsNoSuchMethodError);
      });
    });
  });
}
