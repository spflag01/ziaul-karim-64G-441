abstract class Employee {
  String name;
  double salary;

  Employee(this.name, this.salary);

  double calculateSalary();
}

class Manager extends Employee {
  Manager(String name, double salary) : super(name, salary);

  @override
  double calculateSalary() {
    return salary + 5000;
  }
}

class Developer extends Employee {
  Developer(String name, double salary) : super(name, salary);

  @override
  double calculateSalary() {
    return salary + 3000;
  }
}

void main() {
  Manager manager = Manager("Rahim", 50000);
  Developer developer = Developer("Karim", 40000);

  print("Manager Name: ${manager.name}");
  print("Manager Salary: ${manager.calculateSalary()}");

  print("");

  print("Developer Name: ${developer.name}");
  print("Developer Salary: ${developer.calculateSalary()}");
}