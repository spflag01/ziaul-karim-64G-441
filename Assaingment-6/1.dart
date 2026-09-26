class Student {
  String name;
  int id;
  double cgpa;

  Student(this.name, this.id, this.cgpa);

  void display() {
    print("Name: $name");
    print("ID: $id");
    print("CGPA: $cgpa");
  }
}

void main() {
  Student student = Student("Ziaul", 101, 3.75);

  student.display();
}