import 'dart:io';

// Base class
class Animal {
  String name;

  Animal(this.name);

  void speak() {
    print("Animal sound");
  }
}

// Derived class 1
class Dog extends Animal {
  Dog(String name) : super(name);

  @override
  void speak() {
    print("$name says: Woof!");
  }
}

// Derived class 2
class Cat extends Animal {
  Cat(String name) : super(name);

  @override
  void speak() {
    print("$name says: Meow!");
  }
}

// Derived class 3
class Parrot extends Animal {
  Parrot(String name) : super(name);

  @override
  void speak() {
    print("$name says: Squawk!");
  }
}

// Abstract class acting as an interface
abstract class Drawable {
  void draw();
}

// Class implementing the "interface"
class Circle implements Drawable {
  double radius;

  Circle(this.radius);

  @override
  void draw() {
    print("Drawing a circle with radius $radius");
  }
}

// Class implementing the "interface"
class Square implements Drawable {
  double side;

  Square(this.side);

  @override
  void draw() {
    print("Drawing a square with side length $side");
  }
}

class Person {
  String name;
  int age;

  Person(this.name, this.age);

  @override
  String toString() {
    return 'Name: $name, Age: $age';
  }
}

// Method demonstrating the use of a loop
void printNumbers(int n) {
  for (var i = 1; i <= n; i++) {
    print(i);
  }
}

List<Person> readDataFromFile(String filePath) {
  var file = File(filePath);
  var lines = file.readAsLinesSync();

  var persons = <Person>[];
  for (var line in lines) {
    var parts = line.split(',');
    var name = parts[0];
    var age = int.parse(parts[1]);
    persons.add(Person(name, age));
  }
  return persons;
}

void main() {
  var dog = Dog("Buddy");
  var cat = Cat("Whiskers");
  var parrot = Parrot("Polly");

  dog.speak();
  cat.speak();
  parrot.speak();

  var circle = Circle(5.0);
  var square = Square(4.0);

  circle.draw(); // Output: Drawing a circle with radius 5.0
  square.draw(); // Output: Drawing a square with side length 4.0

  var filePath = 'data.txt'; // Provide your file path here
  var persons = readDataFromFile(filePath);

  print("Printing numbers from 1 to 10:");
  printNumbers(10); // Output: Prints numbers from 1 to 10

  for (var person in persons) {
    print(person);
  }
}
