import 'dart:io';

void main() {
  print('<o/');
  print(heloUser('Ilon Mask'));
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
  ;
}
