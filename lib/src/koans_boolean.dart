void using_boolean() {
  group('Boolean -', () {
    group('Declaring -', () {
      test('bool', () {
        /*
         * Perhaps the similest type in Dart is the boolean (bool)
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
  });
}