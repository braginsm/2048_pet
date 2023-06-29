extension ListIntExtension on List<List<int>> {
  List<List<int>> get columnsToRows {
    final rowLength = length;
    final result = List.generate(first.length, (_) => <int>[]);
    final data = reduce((value, element) => value..addAll(element));
    for (var i = 0; i < data.length; i++) {
      final rowIndex = i % rowLength;
      result[rowIndex].add(data[i]);
    }

    return result;
  }
}
