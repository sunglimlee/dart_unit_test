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
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
        InkWell(
          onTap: () => setState(() async {
            pressed = !pressed;
            pressed = await showAgain();
          }),
          child: Center(
            child: Visibility(
              visible: pressed,
              child: AnimatedContainer(
                duration: const Duration(seconds: 1),
                color: color,
                height: height,
                width: 250,
                child: Hero(
                  tag: "hero1",
                  child: Image.network(
                      'https://i.natgeofe.com/n/3faa2b6a-f351-4995-8fff-36d145116882/domestic-dog_16x9.jpg'), // 이 테그로 여기 위젯을 구분해주는구나. 같은 이름으로 하면 에니메이션 효과 설정이 가능하네..
                ),
              ),
            ),
          ),
        )
      ]),
    );
  }
  Future<bool> showAgain() {
    return Future.delayed(const Duration(seconds: 5), () {
      return true;
    });
  }
}


