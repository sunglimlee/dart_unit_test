import 'package:flutter/material.dart';

void game() {
  // 함수안에 함수가 들어가나?
  // the new variable will be available on that scope level only
  void init() {
    print("Sunglim Lee");
  }
  // 위에 정의하고 밑에서 사용하니깐 되네. 이게 마치 inner 클래스에서 사용한것 처럼 보이는데.. 대신 함수는 순차적으로 실행되니깐 뒤에다가 넣어주어야 하는구나.
  init();

}
