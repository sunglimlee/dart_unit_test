import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage(Key key, this.auth, this.onSignIn) : super(key : key);
  final String? auth;
  /*
  VoidCallback is void Function
  typedef VoidCallback = void Function
   */
  final VoidCallback? onSignIn;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

}

//LoginPage loginPage = LoginPage(UniqueKey(),"bb", fooFunction); // random number will be generated.
LoginPage loginPage = const LoginPage(ValueKey("aa"),"bb", fooFunction);

fooFunction() {
  // ignore: avoid_print
  print("");
}