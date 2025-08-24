abstract class Animal {

  String _name;
  Animal(this._name);
  void makeSound();
  String getName() {
    return _name;
  }
}
class Lion extends Animal {
  double _maneSize;

  Lion(String name, this._maneSize) : super(name);

  double get maneSize => _maneSize;

  set maneSize(double size) {
    if (size >= 0) {
      _maneSize = size;
    } else {
      print("Mane size cannot be negative. Keeping old value.");
    }
  }

  @override
  void makeSound() {
    print("Roar!");
  }
}


class Elephant extends Animal {
  double _trunkLength;

  Elephant(String name, this._trunkLength) : super(name);

  double get trunkLength => _trunkLength;

  set trunkLength(double length) {
    if (length >= 0) {
      _trunkLength = length;
    } else {
      print("Trunk length cannot be negative. Keeping old value.");
    }
  }

  @override
  void makeSound() {
    print("Trumpet!");
  }
}

class Parrot extends Animal {
  int _vocabularySize;

  Parrot(String name, this._vocabularySize) : super(name);

  int get vocabularySize => _vocabularySize;

  set vocabularySize(int size) {
    if (size >= 0) {
      _vocabularySize = size;
    } else {
      print("Vocabulary size cannot be negative. Keeping old value.");
    }
  }

  @override
  void makeSound() {
    print("Squawk! Hello!");
  }
}

void main() {

  List<Animal> zoo = [];

  zoo.add(Lion("Leo", 25.0));
  zoo.add(Elephant("Ella", 150.5));
  zoo.add(Parrot("Polly", 100));

  for (var animal in zoo) {
    print("Animal: ${animal.getName()}");

    if (animal is Lion) {
      print("Mane Size: ${animal.maneSize} cm");
    } else if (animal is Elephant) {
      print("Trunk Length: ${animal.trunkLength} cm");
    } else if (animal is Parrot) {
      print("Vocabulary Size: ${animal.vocabularySize} words");
    }
    print("Sound: ");
    animal.makeSound();
    print("  ");
  }
  Parrot badParrot = Parrot("Jack", -5);
  print("Parrot Vocabulary (before correction): ${badParrot.vocabularySize}");
  badParrot.vocabularySize = -10;
  badParrot.vocabularySize = 50;
  print("Parrot Vocabulary (after correction): ${badParrot.vocabularySize}");
}
