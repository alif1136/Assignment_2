// import 'dart:io';
//
// void main()
// {
//   var array = ['jan', 'feb', 'mar', 'apr', 'may', 'jun', 'jul', 'aug', 'sep', 'oct', 'nov', 'dec'];
//  for (int i = 0; i < array.length; i++)
//  {
//    print('month = ${array[i]}');
//  }
// print('Enter a number from 0 to 11:');
// int ? index = int.tryParse(stdin.readLineSync()!)!;
//
// print('Month = ${array[index]}');
// }

// Abstract class Animal
abstract class Animal {
  // Private field
  String _name;

  // Constructor
  Animal(this._name);

  // Abstract method
  void makeSound();

  // Concrete method
  String getName() {
    return _name;
  }
}

// Lion class
class Lion extends Animal {
  double _maneSize; // private property

  Lion(String name, this._maneSize) : super(name);

  // Getter
  double get maneSize => _maneSize;

  // Setter with validation
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

// Elephant class
class Elephant extends Animal {
  double _trunkLength; // private property

  Elephant(String name, this._trunkLength) : super(name);

  // Getter
  double get trunkLength => _trunkLength;

  // Setter with validation
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

// Parrot class
class Parrot extends Animal {
  int _vocabularySize; // private property

  Parrot(String name, this._vocabularySize) : super(name);

  // Getter
  int get vocabularySize => _vocabularySize;

  // Setter with validation
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
  // Create a list of animals
  List<Animal> zoo = [];

  // Add animals
  zoo.add(Lion("Leo", 25.0));
  zoo.add(Elephant("Ella", 150.5));
  zoo.add(Parrot("Polly", 100));

  // Loop through animals
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

  // Example validation check
  Parrot badParrot = Parrot("Jack", -5);
  print("Parrot Vocabulary (before correction): ${badParrot.vocabularySize}");
  badParrot.vocabularySize = -10; // should trigger validation
  badParrot.vocabularySize = 50; // valid update
  print("Parrot Vocabulary (after correction): ${badParrot.vocabularySize}");
}
