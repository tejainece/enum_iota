import 'package:enum_iota/enum_iota.dart';

@GenEnum(const [
  #male,
  #female,
])
abstract class _Gender implements EnumClass {}

class Gender implements EnumClass {
  final int index;

  final String name;

  const Gender._(this.index, this.name);

  static const female = const Gender._(0, 'female');
  static const male = const Gender._(1, 'male');
}

@GenEnum(const [
  const EnumVal('a', '1 << iota'),  // => 1
  #b,                               // => 2
  ResetIota(5),
  #c,                               // => 0
])
abstract class _Day implements EnumClass {}

main() {
}
