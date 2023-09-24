import 'dart:io';
import 'dart:math';

void main() {
  print('<o/');
  print(heloUser('Ilon Mask'));
  print(shuffleList([123, 44, 1, 2, '213123', true]));
}

heloUser(String name) {
  // Получаем текущее время
  DateTime now = DateTime.now();
  // Получаем час из текущего времени
  int hour = now.hour;

  // Определяем приветствие на основе времени суток
  String greeting;
  if (hour < 12) {
    greeting = 'Доброе утро!';
  } else if (hour < 18) {
    greeting = 'Добрый день!';
  } else {
    greeting = 'Добрый вечер!';
  }

  // Выводим приветствие на экран
  return greeting + ' ' + name;
}

List<T> shuffleList<T>(List<T> list) {
  final random = Random();
  for (int i = list.length - 1; i > 0; i--) {
    int j = random.nextInt(i + 1);
    final temp = list[i];
    list[i] = list[j];
    list[j] = temp;
  }
  return list;
}
