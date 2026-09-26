class Box<T> {
  T value;

  Box(this.value);

  void display() {
    print(value);
  }
}

void main() {
  Box<int> numberBox = Box(100);
  Box<String> textBox = Box("Hello");
  Box<double> decimalBox = Box(10.5);

  numberBox.display();
  textBox.display();
  decimalBox.display();
}