import 'package:flutter/material.dart';

class StackExample extends StatelessWidget {
  const StackExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 100,
          height: 150,
          color: Colors.red,
        ),
        Container(
          width: 150,
          height: 50,
          color: Colors.green,
        ),
        Positioned(
          top: 20,
          bottom: 120,
          left: 30,
          right: 50,
          child: Container(
            // Container 의 사이즈는 상관없고 Positioned 로 무조건 잡히게 되네.
            width: 1,
            height: 1,
            color: Colors.blue,
            child: const Text('이거 어떻게 나오나?'),
          ),
        ),
      ],
    );
  }
}
