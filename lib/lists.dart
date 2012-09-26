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
    group('Accessing -', () {
      test('[]', () {
        /*
         * A list is of limited use if we can't access its
         * contents. Using the [] to access a member of a
         * list. Remember, List indexes start at 0.
         */
        var list = ['zero', true, 2, 3.5];
        expect(list[1], equals(_____));
      });
      test('[]=', () {
        /*
         * We can use the same accessors to assign back into
         * a variable.
         */
        var list = ['one', 'two', 'five'];
        list[2] = 'three sir!';
        expect(list, equals(['one', 'two', '_____']));
      });
    });
    group('Methods -', () {
      group('length -', () {
        test('calling', () {
          /*
           * One of the first methods we should look at for lists
           * is the one that tells us how many elements makes up
           * a list. We want to know the List.length
           */
          var list = [3, 2, true];
          expect(list.length, equals(_____));
        });
        test('empty list', () {
          /*
           * When you call a constructor for a list. The inital
           * list is empty. It doesn't matter if we're using a
           * list with generics.
           */
          var list = new List<int>();
          expect(list.length, equals(_____));
        });
        test('fixed size', () {
          /*
           * So what about when we have an immutable list?
           */
          var list = new List(10);
          expect(list.length, equals(_____));
        });
      }); // end of length group
    }); // end of methods group.
  }); // End of Lists group
}
