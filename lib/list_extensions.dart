import 'dart:math' as math show Random;

extension Subscript<T> on Iterable<T> {
  T? operator [](int index) => length > index ? elementAt(index) : null;
}

extension RandomItem<T> on Iterable<T> {
  T getRandomItem() => elementAt(math.Random().nextInt(length));
}
