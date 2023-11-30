class Student {
  Student();
  String _name = "......";
  String _email = "......";
  String _studentNumber = "......";
  int _age = 0;
  String _grade = "A";

  String getname() {
    return _name;
  }

  String get_email() {
    return _email;
  }

  String get_studentNumber() {
    return _studentNumber;
  }

  String get_age() {
    return '$_age';
  }


  // setters
  void setname(String name) {
     _name = name;
  }

  void set_email(String email) {
     _email = email;
  }

  void set_studentNumber(String studentNumber) {
     _studentNumber = studentNumber;
  }

  void set_age(int age) {
     _age = age;
  }

  void set_Grade(String grade) {
     _grade = grade;
  }
}
