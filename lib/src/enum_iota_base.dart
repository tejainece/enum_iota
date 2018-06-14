class ResetIota {
  final int val;
  const ResetIota(this.val);
}

class EnumVal {
  final String name;
  final dynamic value;
  const EnumVal(this.name, [this.value]);
  const EnumVal.int(this.name, int value) : value = value;
}

class GenEnum {
  final List<dynamic /* String | EnumVal */ > values;

  const GenEnum(this.values);
}

abstract class EnumClass {
  int get index;
}
