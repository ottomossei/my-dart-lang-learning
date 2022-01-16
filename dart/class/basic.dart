// class
class Car {
  // propaty
  // late needs from Car.empty()
  late String name;
  late String year;
  late String color;

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

  // Car.empty() needs late
  // because Automatic field initialization is NOT work.
  Car.empty() {
    name = "";
    year = "";
    color = "";
  }

  // Named Constructors
  Car.withoutYearColor(this.name)
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
  Car emptyCar = Car.empty();
  //  :  :
  print("${emptyCar.name} : ${emptyCar.year} : ${emptyCar.color}");

  // instance
  Car yourCar = Car.withoutYearColor("Nissan");
  // Nissan : 2000 : Yellow
  print("${yourCar.name} : ${yourCar.year} : ${yourCar.color}");
  // Nissan : Poooo!
  yourCar.Horn();

  // instance
  Car blackCar = generateBlack("Suzuki", "1999", "White");
  // Suzuki : 1999 : Black
  print("${blackCar.name} : ${blackCar.year} : ${blackCar.color}");
}
