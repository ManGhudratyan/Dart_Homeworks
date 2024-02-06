abstract interface class Flyable {
  String fly();
}

class Bird implements Flyable {
  @override
  String fly() {
    return "Bird is flying";
  }
}

class Airplane implements Flyable {
  @override
  String fly() {
    return "Airplane is flying";
  }
}

void main() {
  Bird bird = Bird();
  print(bird.fly());
  Airplane airplane = Airplane();
  print(airplane.fly());
}
