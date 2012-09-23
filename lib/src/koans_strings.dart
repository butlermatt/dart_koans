void using_strings() {
  group('Strings -', () {
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
      expect(str, equals(_____));
    });
    test('double quotes', () {
      /*
       * Strings may also be defined with double quotes.
       * This is particularly useful if you need to use an
       * apostrophe in a sentence.
       */
      String str = "Isn't this easy?";
      expect(str, equals(_____));
    });
    test('escape sequences', () {
      /*
       * You can use \ to escape special characters in a
       * string. There is no difference between a single
       * quoted or double quoted string with escape sequences.
       * (some escape characters are \' \n \t)
       */
      String str = 'Single \'quoted\' or double\n';
      expect(_____, equals("Single 'quoted' or double\n"));
    });
  });
}
/* Still to add: raw strings, triple quote strings,
 * string interpolation. Immutable. Many many string
 * methods.
 */

