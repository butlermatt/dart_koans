part of dart_koans;

void using_strings() {
  group('Strings -', () {
    group('Declaring -', () {
      test('single quotes', () {
        /*
         * Strings are another very important type that
         * is defined as a core type of the language.
         * We will find there are a number of ways to 
         * define strings. We'll start with the most
         * common way. It is preferred to define a string
         * between single quotes.
         * Fill in what str should equal below.
         */
        String str = 'This is a string.';
        expect(_____, equals('This is a string.'));
      });
      test('double quotes', () {
        /*
         * Strings may also be defined with double quotes.
         * This is particularly useful if you need to use an
         * apostrophe in a sentence.
         */
        String str = "Wasn't that easy?";
        expect(str, equals(_____));
      });
      test('escape sequences', () {
        /*
         * You can use \ to escape special characters in a
         * string. There is no difference between a single
         * quoted or double quoted string with escape sequences.
         * Some escape characters are:
         *  \' for a '
         *  \\ for a \
         *  \n for a new line
         *  \t for a tab space.
         */
        String str = 'Single \'quoted\' or double\n';
        expect(str, equals("_____\n"));
      });
      test('triple quotes', () {
        /*
         * If you have a large, multi-line block of code you want
         * to store in a variable, you can use string concatenation
         * and new line escape (\n) to construct the string,
         * however it's often much more convenient to use triple
         * quotes. Triple quotes will make new lines and white
         * space significant.
         * Triple quotes may be done with single or double quotes.
         * Note that a new line after the first ''' is ignored however
         * one before the last ''' would be added to the string.
         */
        var str = '''
One and
_____
''';
        expect(str, equals('One and\ntwo\n'));
      });
      test('raw strings', () {
        /*
         * Finally, there is one additional type of string. This is
         * a raw string. There are times when you don't want to
         * escape anything or have to worry about special characters
         * being interpreted. Raw strings are prepended with an 'r'
         * Fill in _____ with the escaped version of str.
         */
        var str = r'\n is a new line\n';
        expect(str, equals('_____'));
      });
    });
    group('Concatenation -', () {
      test('adjoining', () {
        /*
         * In Dart, it's recommended that a line of code does not
         * surpass 80 characters. So how do we write a long string?
         * In Dart, we can concatenate two strings together
         * in a unique way... With no special operator at all.
         * Since whitespace is not significant in Dart, if
         * the VM sees two strings without any separator or
         * semicolons, then they are automatically joined into
         * one.
         */
        var str = 'One '
            'and two.';
        expect(_____, equals('One and two.'));
      });
      test('"+" concatenation', () {
        /*
         * Strings may also be concatenated by using the "+"
         * operator.
         */
        var str = 'One and ';
        var str2 = 'two.';
        expect(str + str2, equals(_____));
      });
      test('"+" only with strings', () {
        /*
         * Unlike many other languages, you cannot use the '+'
         * operator to join a string and a different type
         * together. Only strings may be concatenated to other
         * strings with the '+' operator.
         * We also had to wrap this in a function to properly see
         * the error. We'll cover this usage later as well. For 
         * now just concentrate on the fact that a string and 
         * non-string added together throws an error.
         */
        var broken = () => 'two ' + 3;
        expect(_____, throwsArgumentError);
      });
    });
    group('Interpolation -', () {
      test('combining strings', () {
        /*
         * So what if you have a string variable that you want to
         * join with another string? Or maybe put in the middle of
         * another string? How do you join these strings together
         * without a '+' operator? String interpolation comes to the
         * rescue. Using a $ we can inject a variable into a string.
         */
        var action = 'be nice';
        var str = 'Please $action to me';
        expect(str, equals('Please _____ to me'));
      });
      test('toString', () {
        /* 
         * When interpolating an value into a string, if the value
         * is not already a string, the method will automatically
         * have its toString() method called to display its textual
         * representation. We'll look at this function more when we
         * look at Objects.
         */
        int number = 101;
        expect('$number dalmatians', equals(_____));
      });
      test('complex', () {
        /*
         * In some cases we want to put in more than just a simple
         * variable. Maybe we want a function or method call, or
         * maybe even some simple expressions. If we add braces { }
         * around our interpolation then we can provide much more
         * complex values than a variable.
         */
        var one = 1;
        var two = 2;
        var str = '$one plus $two equals ${one + two}';
        expect(str, equals('1 plus 2 equals _____'));
      });
    });
    group('Accessing -', () {
      test('with []', () {
        /*
         * Similar to many languages, individual characters of a
         * String can be accessed with the [] operator. We'll see
         * this more when looking at Lists but for now know that
         * just like other languages arrays/Lists start with an
         * index of 0.
         */
        var str = 'My little string';
        expect(str[1], equals(_____));
      });
      test('immutable', () {
        /*
         * Strings in Dart are immutable. This means once we have
         * assigned a string, we cannot modify the contents of that
         * string. Instead we must create a new string and assign 
         * it to a new variable name or back to the same variable
         * name. Other languages you could change the elements of
         * a string using the [] accessor. In Dart, trying to
         * change a string like that will generate an error (also
         * known as throwing an error).
         */
        var str = 'Hello';
        str = '$str there!';
        
        // Because of how the testing framework works, we need to
        // put any code that generates an error inside of a function.
        // We'll cover that in more detail later. For now only be
        // concerned that anything after the => below causes the
        // error to be thrown.
        var broken = () => str[0] = 'h'; 
        expect(_____, throwsNoSuchMethodError);
      });
    });
  });
}
