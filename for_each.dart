/*
 * Exemplos de implementação do forEach()
 */

typedef MyCallback = void Function(int);

class MyClass {
  final _myList = [1, 2, 3, 4, 5];

  void forEach(void Function(int) action) {
    for (var data in _myList) {
      action(data);
    }
    print('-' * 10);
  }

  void forEach2(void action(int _)) {
    for (var data in _myList) {
      action(data);
    }
    print('-' * 10);
  }

  void forEach3(MyCallback action) {
    for (var data in _myList) {
      action(data);
    }
  }
}

void myAction(int elem) {
  print('V1: $elem');
}

void main() {
  final myClass = MyClass();

  myClass.forEach(myAction);

  myClass.forEach((int elem) {
    print('V2: $elem');
  });

  myClass.forEach((elem) {
    print('V3: $elem');
  });

  myClass.forEach((elem) => print('V4: $elem'));
}
