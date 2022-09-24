import 'package:flutter/material.dart';

class AnimatedContainerWidget extends StatefulWidget {
  const AnimatedContainerWidget({Key? key}) : super(key: key);

  @override
  State<AnimatedContainerWidget> createState() =>
      _AnimatedContainerWidgetState();
}

class _AnimatedContainerWidgetState extends State<AnimatedContainerWidget> {
  bool pressed = false;

  @override
  Widget build(BuildContext context) {
    double height = pressed ? 150 : 250;
    Color color = pressed ? Colors.orangeAccent : Colors.green;

    return Scaffold( // AnimatedContainer 를 사용하기 위해서는 반드시 Scaffold 로 감싸야 한다.
      body: Center(
        child: Container(child:
          const Chip(
            autofocus: true,
            avatar: Icon(Icons.accessible_forward),
            label: Text('Steve.patriot@gmail.com '),
          ),),
      ),
    );
  }
}
