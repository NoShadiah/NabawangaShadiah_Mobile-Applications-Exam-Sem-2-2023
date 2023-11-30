abstract class Student {
  Student(this.name, this.email, this.studentNumber, this.age, this.grade);
  String name = "......";
  String email = "......";
  String studentNumber = "......";
  int age = 0;
  String grade = "A";

  String getname() {
    return name;
  }

  String getemail() {
    return email;
  }

  String getstudentNumber() {
    return studentNumber;
  }

  String getage() {
    return '$age';
  }

  String getGrade() {
    return grade;
  }
}
