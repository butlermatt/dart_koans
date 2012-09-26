void using_lists() {
  group('Lists -', () {
    group('Declaring -', () {
      test('literal', () {
        /*
         * A List in Dart is similar to an array in other
         * languages. Specifically it is an indexable
         * collection of values. A List literal is defined
         * between two square braces [ and ].
         * Fill in the literal that list should equal below.
         */
        List list = [3, 2, 5];
        expect(list, equals(_____));
      });
      test('Multiple Types', () {
        /*
         * Unlike arrays in some other languages. Lists in dart
         * can contain multiple different types.
         */
        var list = [3, 2, 4.5, 0.03, 'string', ['sublist', true], false];
        expect(_____, isList);
      });
      test('Constructor', () {
        /*
         * Lists can also be created with a constructor. We'll 
         * learn about constructors more later on but lets take
         * a peak now as its fairly common way of declaring a
         * list.
         */
        var list = new List();
        expect(_____, isList);
      });
      test('Using Generics', () {
        /*
         * Occasionally, you may which to specify that a list
         * should only contain certain types. While dart is an
         * optionally typed language, and ultimately you can
         * assign any value to any variable (type), you can run
         * dart in 'checked-mode' which will give you warnings
         * or errors when unexpected types appear.
         */
        var list = new List<int>();
        expect(_____, isList);
      });
      test('Fixed-Size', () {
        /*
         * One final way to declare a list is by passing a size
         * value to the constructor. This will create an 
         * 'immutable list'. That is, it creates a which cannot
         * grow or shrink in size. We'll see how this affects
         * lists soon. This works with a standard list or a
         * list using Generics.
         */
        var list = new List(10);
        expect(_____, isList);
      });
    });
  });
}