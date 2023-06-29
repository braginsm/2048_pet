extension ListIntExtension on List<int> {
  int get max =>
      reduce((value, element) => value = element > value ? element : value);

  List<int> moveTo([toRight = false]) {
    var result = toRight ? reversed.toList() : this;
    for (var i = 0; i < result.length; i++) {
      if (i == 0 || result[i] == 0) {
        continue;
      }
      if (result[i - 1] == 0) {
        result[i - 1] = result[i];
        result[i] = 0;
        i = 0;
        continue;
      }
      if (result[i - 1] == result[i]) {
        result[i - 1]++;
        result[i] = 0;
        i = 0;
      }
    }
    return toRight ? result.reversed.toList() : result;
  }
}
