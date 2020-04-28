library koans_config;

import 'package:test/test.dart' as ut;
import 'package:path/path.dart' as path;
import 'config_colors.dart' as colors;
import 'dart:io';

const _____ = '<Fill in Value>';

/// A [Matcher] that matches any [Object] instance
const ut.Matcher isObject = const myInstanceOf<Object>('Object');

/// A [Matcher] that matches any [bool] instance
const ut.Matcher isBool = const myInstanceOf<bool>('bool');

/// A [Matcher] that matches any [num] instance
const ut.Matcher isNum = const myInstanceOf<num>('num');

/// A [Matcher] that matches any [int] instance
const ut.Matcher isInt = const myInstanceOf<int>('int');

/// A [Matcher] that matches any [double] instance
const ut.Matcher isDouble = const myInstanceOf<double>('double');

/// A [Matcher] that matches any [String] instance
const ut.Matcher isString =  const myInstanceOf<String>('String');

/// A [Matcher] that matches any [List] instance
//const ut.Matcher isList =  const myInstanceOf<List>('List');

/// A [Matcher] that matches any non [bool] instance
const ut.Matcher isNotBool = const isNotInstanceOf<bool>('bool');

/// A [Matcher] that matches any non [num] instance
const ut.Matcher isNotNum = const isNotInstanceOf<num>('num');

/// A [Matcher] that matches any non [int] instance
const ut.Matcher isNotInt = const isNotInstanceOf<int>('int');

/// A [Matcher] that matches any non [double] instance
const ut.Matcher isNotDouble = const isNotInstanceOf<double>('double');

/// A [Matcher] that matches any non [num] instance
const ut.Matcher isNotString = const isNotInstanceOf<String>('String');


// TODO: Fix deprecated use of isInstanceOf
class myInstanceOf<T> extends ut.isInstanceOf<T> {
  final String _name;
  
  const myInstanceOf([name = 'specified type']): _name = name;
  
  bool matches(obj, Map matchState) { 
    if(obj == _____) return false;
    return obj is T;
  }
  // The description here is lame :-(
  ut.Description describe(ut.Description description) =>
      description.add('an instance of ${_name}');
}

// TODO: Fix deprecated use of isInstanceOf
class isNotInstanceOf<T> extends ut.isInstanceOf<T> {
  final String _name;
  const isNotInstanceOf([name = 'specified type']) : this._name = name;
  bool matches(obj, Map matchState) { 
    if(obj == _____) return false;
    return obj is! T;
  }
  // The description here is lame :-(
  ut.Description describe(ut.Description description) =>
      description.add('not an instance of ${_name}');
}
