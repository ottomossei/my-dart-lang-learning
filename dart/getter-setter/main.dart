import 'getter.dart';

void main() {
  Car car = Car("BMW", 2031);
  // getter
  print(car.name);
  // getter
  print(car.number);

  // setter
  car.name = "Nissan";
  print(car.name);
}
