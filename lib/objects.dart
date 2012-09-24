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
         * Note that the isXxxx notation is the the correct
         * way of checking a type. We'll look at that later
         * as well.
         */
        expect(5, _____);
      });
    });
  });
}