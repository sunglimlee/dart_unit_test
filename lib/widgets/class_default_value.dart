import 'package:flutter/material.dart';

class ClassDefaultValue extends StatelessWidget {
  // https://www.bezkoder.com/dart-flutter-constructors/#:~:text=has%20many%20parameter.-,Dart%2FFlutter%20Constructor%20default%20value,the%20default%20value%20is%20null.
  // US 로 기본값을 지정해 주었다. class constructor default value 클래스 생성자 기본값
  // 기억해야 할 것은
  // For the constructors with either Named or Positional parameters, we can use = to define default values.
  // The default values must be compile-time constants. If we don’t provide value, the default value is null.
  const ClassDefaultValue({Key? key, this.name, this.age, this.location = "US"}) : super(key: key);
  final String? name;
  final int? age;
  final String? location;

  @override
  Widget build(BuildContext context) {

    return Container();
  }
}
