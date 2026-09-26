abstract class Person {
  String _name;

  Person(this._name);

  String get name {
    return _name;
  }

  void displayInfo();
}

class Student extends Person {
  int id;

  List<Course> courses = [];

  Student(String name, this.id) : super(name);

  void enroll(Course course) {
    courses.add(course);

    print("$name enrolled in ${course.courseName}");
  }

  @override
  void displayInfo() {
    print("Student Name: $name");
    print("Student ID: $id");
  }
}

class Course {
  String courseName;
  String courseCode;

  Course(this.courseName, this.courseCode);

  void displayCourse() {
    print("Course Name: $courseName");
    print("Course Code: $courseCode");
  }
}

class Enrollment {
  Student student;
  Course course;

  Enrollment(this.student, this.course);

  void displayEnrollment() {
    print("${student.name} is enrolled in ${course.courseName}");
  }
}

void main() {
  Student student = Student("Karim", 101);

  Course course1 = Course(
    "Object Oriented Programming",
    "CSE201",
  );

  Course course2 = Course(
    "Database Management",
    "CSE202",
  );

  Enrollment enrollment1 = Enrollment(student, course1);

  Enrollment enrollment2 = Enrollment(student, course2);

  print("Student Information:");
  student.displayInfo();

  print("");

  print("Course Information:");
  course1.displayCourse();

  print("");

  course2.displayCourse();

  print("");

  print("Enrollment:");
  student.enroll(course1);
  student.enroll(course2);

  print("");

  enrollment1.displayEnrollment();
  enrollment2.displayEnrollment();
}