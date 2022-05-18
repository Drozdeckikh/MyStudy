// 1. Создать функцию в которую мы можем написать любое число и она нам выведет:
// Чему равно наше число и является ли оно натуральным числом.
//   Пример вывода:
// “Число -12 не является натуральным числом”

// 2.  Создать некий словарь (Дедушка, бабушка, мама, папа, брат, сестра, сын, дочь) и функцию в которую мы можешь написать слово из нашего словаря и функция выведет нам перевод на английском языке нашего слова:
//   Пример вывода:
// “На английском языке слово Папа будет father”

// 3. Создать функцию, которая принимает в себя массив Инт и считает сумму всех значений в массиве и выводит количество значений в массиве
//   Пример вывода:
// “Сумма значений равна 13, а количество значений равно 3”

// 4. Функция, которая выведет нам количество раз, сколько было 29 февраля с 0 года да 2022.
//   Пример вывода:
// “29 февраля было N раз”

void main() {
//Exercise #1 / Natural number
  dynamic number = 12;
  listNatur(number);

//Exercise #2 / Vocabulary
  String slov = "мама";
  maps(slov);

//Exercise #3 / Array
  List<int> list = [1, 4, 5, 3, 4, 6];
  listSum(list);

//Exercise #4 / Leap year
  year(1, 2022);
}

//Exercise #1.1
void listNatur(number) {
  if (number >= 0 && number % 1 == 0) {
    print("Number $number is natural");
  } else {
    print("Number $number is not natural");
  }
}

//Exercise #2.1
void maps(slov) {
  var map = {
    "мама": "mother",
    "папа": "father",
    "дедушка": "grandfather",
    "бабушка": "grandmother",
    "сестра": "sister",
    "брат": "brother",
    "тетя": "aunt",
    "дядя": "uncle",
    "сын": "son",
    "дочь": "daugter"
  };
  if (map[slov] != null) {
    dynamic a = map[slov];
    print("На английском языке слово -$slov- будет -$a-");
  } else {
    print("There is no such word in the dictionary");
  }
}

//Exercise #3.1
void listSum(list) {
  int n = 0;
  for (int i = 0; i < list.length; i++) {
    n = list[i] + n;
  }
  int a = list.length;
  print("Summ - $n");
  print("Amount of numbers - $a");
}

//Exercise #4.1
void year(nach, kon) {
  int j = 0;
  for (int i = nach; i < kon; i++) {
    if (i % 4 == 0 && i % 100 != 0) {
      print(i);
      j++;
    } else if (i % 100 == 0 && i % 400 == 0) {
      print(i);
      j++;
    }
  }
  print("February 29 was $j times");
}
