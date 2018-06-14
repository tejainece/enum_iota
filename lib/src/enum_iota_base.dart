class Reset {
  final int value;
  const Reset([this.value]);
}

class ConstEval {
  final Symbol name;
  final dynamic value;
  const ConstEval(this.name, [this.value]);
  const ConstEval.int(this.name, int value) : value = value;
}

class GenEnum {
  final List<dynamic /* String | EnumVal */ > values;

  const GenEnum(this.values);
}

abstract class Enum {
  int get index;
}
