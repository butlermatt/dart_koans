part of dart_koans;

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
         * learn about constructors more later on, but let's take
         * a peek now as it's a fairly common way of declaring a
         * list.
         */
        var list = new List();
        expect(_____, isList);
      });
      test('Using Generics', () {
        /*
         * Occasionally, you may wish to specify that a list
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
         * list. The first element of a list is index 0.
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
      test('Sub-lists', () {
        /*
         * Just as you would expect, you can access sublists
         * with [][] One for each list you need to access.
         * Write the expected indices to retreive the value
         * in equals. (Don't forget indices start at 0).
         */
        var list = ['one', ['two', 2], ['three', 3.3, 3]];
        expect(_____, equals(3.3));
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
        test('setting growing', () {
          /*
           * An often over looked feature is that you can also
           * use length to set the size of a mutable list.
           * If you are growing a list larger than it previously
           * was, then new elements are added to the end and
           * are initialized to null
           */
          var list = [0, 1, 2];
          list.length = 5;
          expect(list, equals(_____));
        });
        test('setting shrinking', () {
          /*
           * setting the length to less than the current size of
           * a list, will cause the elements from the end to
           * be removed.
           */
          var list = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
          list.length = 3;
          expect(list, equals(_____));
        });
        test('setting fixed size', () {
          /*
           * However if you try to set the size of an immutable
           * list, it results in throwing an
           * UnsupportedOperationException. Fill in 'broken'
           * below.
           */
          var list = new List(5);
          // Need below to properly wrap the exception.
          var broken = () => list.length = 10;
          expect(_____, throwsUnsupportedError);
        });
      });
      group('add -', () {
        test('calling', () {
          /*
           * Now some times you may not want to increase the
           * size of a list one at a time before assigning to the
           * index. Lists provide a convience function to add an
           * element.
           */
          var list = [0, 1, 2];
          list.add(3);
          expect(list, equals([_____]));
        });
        test('adding lists', () {
          /* Now the add method is designed for adding one
           * element to a list. So what do you suppose happens
           * if you try adding another list to a list.
           */
          var list = [0, 1, 2];
          list.add([3, 4]);
          expect(list, equals([_____]));
        });
        test('addAll', () {
          /*
           * Usually the previous test isn't exactly what you
           * want to accomplish. Thus we have the addAll method
           * which will add all of the items from a list.
           */
          var list = [0, 1, 2];
          list.addAll([3, 4]);
          expect(list, equals([_____]));
        });
        test('add to fixed size', () {
          /*
           * And just like when we tried to change the length of
           * an immutable list, trying to add to an immutable
           * list will result in an UnsupportedOperationException
           */
          var list = new List(5);
          var broken = () => list.add(10);
          expect(_____, throwsUnsupportedError);
        });
      });
    }); // end of methods group.
  }); // End of Lists group
}
