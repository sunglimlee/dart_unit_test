import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            top: 0, bottom: 0, left: 0, right: 0,
            child: Center(child: Container(
              color: Colors.purple,
              child: Hero(
                tag: "hero1",
                child: Image.network('https://i.natgeofe.com/n/3faa2b6a-f351-4995-8fff-36d145116882/domestic-dog_16x9.jpg'), // 이 테그로 여기 위젯을 구분해주는구나. 같은 이름으로 하면 에니메이션 효과 설정이 가능하네..
              ),
            ))),
      ],
    );
  }
}
