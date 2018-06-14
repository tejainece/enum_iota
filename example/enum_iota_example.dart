import 'package:enum_iota/enum_iota.dart';

@GenEnum(const [
  #male,
  #female,
])
abstract class _Gender implements Enum {}

class Gender implements Enum {
  final int index;

  final String name;

  const Gender._(this.index, this.name);

  static const female = const Gender._(0, 'female');
  static const male = const Gender._(1, 'male');
}

@GenEnum(const [
  ConstEval(#a, '1 << iota'), // => 1
  #b, // => 2
  5,
  #c, // => 0
])
abstract class _Day implements Enum {}

@GenEnum(const [
  null, // Don't capture
  ConstEval(#kb, '1 << (10 * iota)'),
  #mb,
  #gb,
  #tb,
  #pb,
  #eb,
  #zb,
  #yb
])
abstract class _Size implements Enum {}

main() {}
