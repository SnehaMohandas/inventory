import 'package:flutter/material.dart';

void main() {
  List<int> list = [2, 1, 9, 8, 7, 7, 9, 1, 1, 2, 3, 5, 7, 6, 6];

  var count = countPairs(list);

  print(count);
}

int countPairs(List<int> list) {
  Map<int, int> counts = {};
  for (int element in list) {
    print(counts);
    if (counts.containsKey(element)) {
      int currentCount = counts[element]!;
      counts[element] = currentCount + 1;
    } else {
      counts[element] = 1;
    }
  }

  int result = 0;
  for (int count in counts.values) {
    result += count ~/ 2;
  }

  return result;
}
