class Func {
  Func._();

  static double normalize({
    required double min,
    required double max,
    required double data,
  }) {
    return (data - min) / (max - min) > 1
        ? 1
        : (data - min) / (max - min) < 0
            ? 0
            : (data - min) / (max - min);
  }

  static List<List<dynamic>> listToSublists(
    List<dynamic> list,
    int sublistCount,
  ) {
    if (list.length <= sublistCount) {
      return [list];
    }

    int pages = (list.length / sublistCount).ceil();

    List<List<dynamic>> newList = [];

    for (var i = 0; i < pages; i++) {
      if ((i * sublistCount) + sublistCount > list.length) {
        newList.add(list.sublist(i * sublistCount));
      } else {
        newList.add(list.sublist(i * sublistCount, (i * sublistCount) + sublistCount));
      }
    }

    return newList;
  }
}
