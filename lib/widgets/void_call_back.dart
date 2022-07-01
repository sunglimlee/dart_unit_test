// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

// https://www.bezkoder.com/dart-flutter-constructors/
class LoginPage extends StatelessWidget {
  const LoginPage(auth, this.onSignIn); // 여기 보이듯이 생성자에 바로 써도 되는데... 왜 따로 빼놨지?
  /*
  VoidCallback is void Function
  typedef VoidCallback = void Function
   */
  final VoidCallback onSignIn; // 묻지도 따지지도 않는다. 그래서 VoidCallback

  @override
  Widget build(BuildContext context) {
    VoidCallback tt1 = onSignIn; // 가능
    Function tt2 = onSignIn; // 보이지? 묻지도 따지지도 않는것... 이 뜻은 void Function() 을 가리키는 거다.
    // TODO: implement build
    throw UnimplementedError();
  }

}

LoginPage loginPage = const LoginPage("bb", fooFunction);

fooFunction() {
  // ignore: avoid_print
  print("");
}