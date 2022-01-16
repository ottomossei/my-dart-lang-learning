// class
class Car {
  // propaty
  String name;
  String year;
  String color;

  // constructor
  // Automatic field initialization
  Car(this.name, this.year, this.color) {
    print("Generate instance !");
    // Assign parameters to property.
    // The following can be omitted.
    this.name = name;
    this.year = year;
    this.color = color;
  }

  // Named Constructors
  Car.withoutYear({required this.name})
      : year = "2000",
        color = "Yellow";

  // method
  void Horn() {
    print("$name : Poooo!");
  }
}

// instance
Car generateBlack(String name, String year, String color) {
  color = "Black";
  return Car(name, year, color);
}

main() {
  String carName = "BMW";
  String carYear = "2010";
  String carColor = "Blue";
  // instance
  Car myCar = Car(carName, carYear, carColor);
  // BMW : 2020 : Blue
  print("${myCar.name} : ${myCar.year} : ${myCar.color}");
  // BMW : Poooo!
  myCar.Horn();

  // instance
  Car yourCar = Car.withoutYear(name: "Nissan");
  // Nissan : 2000 : Yellow
  print("${yourCar.name} : ${yourCar.year} : ${yourCar.color}");
  // Nissan : Poooo!
  yourCar.Horn();

  // instance
  Car blackCar = generateBlack("Suzuki", "1999", "White");
  // Suzuki : 1999 : Black
  print("${blackCar.name} : ${blackCar.year} : ${blackCar.color}");
}
