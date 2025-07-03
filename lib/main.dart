import 'dart:math';

import 'package:dart_collections_journey/names.dart';
import 'package:word_generator/data/nouns.dart';
import 'package:word_generator/word_generator.dart';

void main() {
  print('-------------- TASK 1: Dart Collections Journey --------------');
  runTask1();

  print('-------------- TASK 2: Dart Collections Journey --------------');
  runTask2();

  print('-------------- TASK 3: Dart Collections Journey --------------');
  runTask3();
}

void runTask1() {
  final List<int> numbers = List.generate(
    100,
    (index) => Random().nextInt(101),
  );
  print('all numbers: $numbers');
  print('65-й елемент: ${numbers[64]}');
  numbers[49] = 1000000000;
  final List<int> notNeeded = [24, 45, 66, 88];
  numbers.removeWhere((element) => notNeeded.contains(element));

  final List<int> temp = [];
  int sum = 0;

  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] % 3 == 0) {
      sum += numbers[i];
    }
  }

  for (final number in numbers) {
    if (number % 2 == 0) {
      temp.add(number);
    }
  }

  print('Сума елементів що діляться на 3 без залишку: $sum');
  print(
    'Довжина списку елементів що діляться на 2 без залишку: ${temp.length}',
  );
}

void runTask2() {
  final Set<String> uniqueNames1 = ukrainianNames1.toSet();
  final Set<String> uniqueNames2 = ukrainianNames2.toSet();
  final Set<String> commonNames = uniqueNames1.intersection(uniqueNames2);
  print('Кількість спільних імен: ${commonNames.length}');
  final Set<String> onlyInFirstSet = uniqueNames1.difference(uniqueNames2);
  final Set<String> onlyInSecondSet = uniqueNames2.difference(uniqueNames1);
  print('Імена, які є тільки в першому списку: $onlyInFirstSet');
  print('Імена, які є тільки в другому списку: $onlyInSecondSet');
}

void runTask3() {
  final wordGenerator = WordGenerator();
  final List<String> nounsList = wordGenerator.randomNouns(50);
  final Map<String, int> nounsMap = nounsList.asMap().map(
    (index, noun) => MapEntry(noun, noun.length),
  );
  final Map<String, int> tempNounsMap = Map.fromEntries(
    nounsMap.entries.where((entry) => entry.value % 2 == 0),
  );
  print(
    'Ключі слів з парною кількістю символів: ${tempNounsMap.keys.toList()}',
  );
}
