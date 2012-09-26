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
    });
  });
}