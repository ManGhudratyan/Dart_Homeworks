class Animal {
  String makeSound() {
    return '';
  }
}

class Dog extends Animal {
  @override
  String makeSound() {
    return 'Haf';
  }
}

class Cat extends Animal {
  @override
  String makeSound() {
    return 'Meow';
  }
}

class Cow extends Animal {
  @override
  String makeSound() {
    return 'Moo';
  }
}

void main(){
  Dog dog = Dog();
  print("Dog sound is: ${dog.makeSound()}");
  Cat cat = Cat();
  print("Cat sound is: ${cat.makeSound()}");
  Cow cow = Cow();
  print("Cow sound is: ${cow.makeSound()}");
}