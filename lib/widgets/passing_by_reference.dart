import 'package:flutter/material.dart';

class PassingByReferenceTest extends StatelessWidget {
  const PassingByReferenceTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Employee Miah = Employee("Miah Sul");
    Employee temp = Sunglim;
    temp.name = "Juho Lee";
    return Container(padding: EdgeInsets.all(50),
      child: Text(
        temp.printName(), textDirection: TextDirection.ltr,
      ),
    );
  }
}

// 여기 외부에서 만든 Employee 도 있다.
Employee Sunglim = Employee("Sunglim Lee");


class Employee {
  String name;
  Employee(this.name);
  String printName() {
    return name;
  }
}


