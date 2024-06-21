class Car {
  // Properties
  String brand;
  String model;
  int year;
  double milesDriven;

  // Static property to count the number of Car objects
  static int numberOfCars = 0;

  // Constructor
  Car(this.brand, this.model, this.year, this.milesDriven) {
    // Incrementing the static property whenever a new Car object is created
    numberOfCars++;
  }

  // Method to drive the car and add miles
  void drive(double miles) {
    milesDriven += miles;
  }

  // Method to get the miles driven
  double getMilesDriven() {
    return milesDriven;
  }

  // Method to get the brand of the car
  String getBrand() {
    return brand;
  }

  // Method to get the model of the car
  String getModel() {
    return model;
  }

  // Method to get the year of the car
  int getYear() {
    return year;
  }

  // Method to get the age of the car
  int getAge() {
    DateTime now = DateTime.now();
    return now.year - year;
  }
}

void main() {
  // Create three Car objects with different brands, models, and years
  Car RahimsCar = Car('Toyota', 'Corolla', 2020, 15000.0);
  Car myCar = Car('Honda', 'Civic', 2018, 30000.0);
  Car KarimsCar = Car('Ford', 'Mustang', 2016, 45000.0);

  // Drive each car a different number of miles
  RahimsCar.drive(26000.0);
  myCar.drive(18000.0);
  KarimsCar.drive(15000.0);

  // Print out the details of each car
  print('RahimsCar:');
  print('Brand: ${RahimsCar.getBrand()}');
  print('Model: ${RahimsCar.getModel()}');
  print('Year: ${RahimsCar.getYear()}');
  print('Miles Driven: ${RahimsCar.getMilesDriven()}');
  print('Age: ${RahimsCar.getAge()} years\n');

  print('myCar:');
  print('Brand: ${myCar.getBrand()}');
  print('Model: ${myCar.getModel()}');
  print('Year: ${myCar.getYear()}');
  print('Miles Driven: ${myCar.getMilesDriven()}');
  print('Age: ${myCar.getAge()} years\n');

  print('KarimsCar:');
  print('Brand: ${KarimsCar.getBrand()}');
  print('Model: ${KarimsCar.getModel()}');
  print('Year: ${KarimsCar.getYear()}');
  print('Miles Driven: ${KarimsCar.getMilesDriven()}');
  print('Age: ${KarimsCar.getAge()} years\n');

  // Print out the total number of Car objects created
  print('Total number of cars created: ${Car.numberOfCars}');
}


//My Project