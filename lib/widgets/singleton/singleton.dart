import 'package:flutter/material.dart';

class SingletonUse extends StatelessWidget {
  const SingletonUse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 여기서 이렇게 사용하자.
    SingletonOne one = SingletonOne();
    SingletonTwo two = SingletonTwo.instance;
    SingletonThree three = SingletonThree.instance;

    return Center(
      child: Container(
        child: const Text('Singleton 사용법'),
      ),
    );
  }
}


// singleton 만드는 방법
// https://stackoverflow.com/questions/12649573/how-do-you-build-a-singleton-in-dart
class SingletonOne {

  SingletonOne._privateConstructor(); // 여기가 private constructor (이부분만 생소하네. _가 들어가야 한다는것).

  static final SingletonOne _instance = SingletonOne._privateConstructor(); // private constructor 을 이용해서 static 객체를 만들고

  factory SingletonOne() {
    return _instance; // factory constructor 를 사용해서 매번 객체를 생성할 때만다 static 객체를 던져준다.
  }

}

class SingletonTwo {

  SingletonTwo._privateConstructor();

  static final SingletonTwo _instance = SingletonTwo._privateConstructor();

  static SingletonTwo get instance => _instance;

}

class SingletonThree {

  SingletonThree._privateConstructor();

  static final SingletonThree instance = SingletonThree._privateConstructor();

}



