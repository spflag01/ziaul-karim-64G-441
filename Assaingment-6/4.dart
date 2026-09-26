class Car {
  Car.manual() {
    print("Manual car");
  }

  Car.automatic() {
    print("Automatic car");
  }
}

void main() {
  Car car1 = Car.manual();
  Car car2 = Car.automatic();
}