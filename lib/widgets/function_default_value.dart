import 'package:flutter/material.dart';

class FunctionDefaultValue extends StatelessWidget {
  const FunctionDefaultValue({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 밑에 보다시피 default 기본값을 함수에 넣어줄 수 있다.
    // function parameter default value 함수 파라미터 기본값
    // We should note that only optional parameters can have default values.
    // ignore: unused_element
    String foo(int i, {int j = 1}) {
      return "Steve";
    }
    return Container();
  }
}
