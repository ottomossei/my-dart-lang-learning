class Person {
  final String name;

  Person(this.name);

  void describe() {
    print("Hi, Im a person.");
  }
}

// If you want to use a method of the parent class, use "extends".
// The parent class of "extends" is abstract and has an "is - a" relationship.
// Example: mammal - rabbit
class Programmer extends Person {
  // Passing arguments to the parent class
  Programmer(String nameProgrammer) : super(nameProgrammer);
  void introduce() {
    super.describe();
    print("and Im a programmeer");
  }
}

// implements
// If the parent class has a must requirement, use "implements".
class Engineer implements Person {
  @override
  final String name;

  Engineer(this.name);

  @override
  void describe() {
    print("Hi, Im a Engineer");
  }
}

// abstract
// "abstruct" is a blueprint of a class.
// "abstruct" can't be instance.
abstract class Animal {
  final String name;
  Animal(this.name);

  void describe();
}

class Dog implements Animal {
  @override
  final String name;
  Dog(this.name);

  @override
  void describe() {
    print("Bow Wow!");
  }
}

// If it is "abstruct", the function or variable must be "override".
class Cat extends Animal {
  Cat(String name) : super(name);

  @override
  void describe() {
    print("Cat!!");
  }
}

// mixin
// "mixin" uses useful methods regardless of class
mixin Swim {
  void swim() {
    print("swimming");
  }
}

mixin Eat {
  void eat() {
    print("eat");
  }
}

class Fish with Swim, Eat {}

void main() {
  // extends
  Programmer programmer = Programmer("Tomo");
  programmer.introduce();

  // implements
  Engineer engineer = Engineer("Tomo");
  engineer.describe();

  // abstract extends
  Cat cat = Cat("Tama");
  cat.describe();

  // abstract implements
  Dog dog = Dog("Robin");
  dog.describe();

  // mixin
  Fish fish = Fish();
  fish.eat();
}
