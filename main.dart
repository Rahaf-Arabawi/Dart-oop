// task1
// class studant {
//   String name;
//   int age;

//   studant(this.name, this.age);
//   void display() {
//     print('Name: $name, Age: $age');
//   }
// }
// void main() {
//   studant s = studant('rahaf', 20);
//   studant s1 = studant('Jane', 25);
//   s.display();
//   s1.display();
// }

// task2
// class Student {
//   String name;
//   String favoriteLanguage;

//   Student(this.name, this.favoriteLanguage);

//   void updateFavoriteLanguage(String newLanguage) {
//     favoriteLanguage = newLanguage;
//     print("Preferred language updated to $newLanguage");
//   }
// }
// void main() {
//   var student = Student("Ahmed", "React");
//   print("Current preferred language: ${student.favoriteLanguage}");
//   student.updateFavoriteLanguage("Dart");
//   print("Preferred language after update: ${student.favoriteLanguage}");
// }

// task3
// class Student {
//   String name;
//   int age;

//   Student(this.name, this.age);
//   int calculateYearOfBirth() {
//     int calculateYear = DateTime.now().year;
//     int yearOfBirth = calculateYear - age;
//     return yearOfBirth;
//   }
// }
// void main() {
//   var student = Student("Rahaf", 22);
//   int yearOfBirth = student.calculateYearOfBirth();
//   print("Year of birth: $yearOfBirth");
// }

// task4
// class Student {
//   String name;
//   int age;
//   String favoriteLanguage;

//   Student(this.name, this.age, this.favoriteLanguage);

//   void display() {
//     print("Name: $name, Age: $age, Favorite Language: $favoriteLanguage");
//   }
// }

// class StudentManager {
//   List<Student> students = [];

//   void addStudent(Student student) {
//     students.add(student);
//   }
//   void printAllStudents() {
//     for (var student in students) {
//       student.display();
//     }
//   }
// }

// void main() {
//   var student1 = Student("Rahaf", 27, "ReactJS");
//   var student2 = Student("Lina", 22, "Dart");

//   var manager = StudentManager();
//   manager.addStudent(student1);
//   manager.addStudent(student2);
//   manager.printAllStudents();
// }

// task5
// class Student {
//   String name;
//   int age;
//   String favoriteLanguage;

//   Student(this.name, this.age, this.favoriteLanguage);
//   Student.guest() : name = "Guest", age = 0, favoriteLanguage = "Unknown";

//   void display() {
//     print("Student: $name, Age: $age, Favorite Language: $favoriteLanguage");
//   }
// }

// void main() {
//   var guestStudent = Student.guest();
//   guestStudent.display();
// }

// task6

// task7
class Student {
  String name;
  int _age;
  String favoriteLanguage;

  Student(this.name, this._age, this.favoriteLanguage);

  int get age => _age;
  set age(int newAge) {
    if (newAge >= 0) {
      _age = newAge;
      print("Student age: $newAge");
    } else {
      print("Trying to set age to $newAge...");
      print("Age remains: $_age");
    }
  }
  void display() {
    print("Student: $name, Age: $_age, Favorite Language: $favoriteLanguage");
  }
}

void main() {
  var student = Student("Rahaf", 25, "ReactJS");
  student.display();
  student.age = -5;
}
