import 'dart:math';

void main() {
  print('-------------- TASK 1: Dart Collections Journey --------------');
  runTask1();

  //print('-------------- TASK 2: Dart Collections Journey --------------');
  //runTask2();

  //print('-------------- TASK 3: Dart Collections Journey --------------');
  //runTask3();
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
  int sum = 0;
  final List<int> temp = [];
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

void runTask2() {}

void runTask3() {}
