import 'package:flutter/material.dart';

// https://blog.logrocket.com/statenotifier-improving-state-change-notifiers-flutter/#:~:text=ChangeNotifier%20is%20a%20class%20that,a%20change%20in%20that%20class.
// 상태변화 이벤트를 받는 클래스이구나.
class ThemeManager with ChangeNotifier{ // 상태관리를 해줄 클래스임을 표시

  ThemeMode _themeMode = ThemeMode.light;
  // [question : The return type of getter 'themeMode' is 'dynamic' which isn't a subtype of the type 'ThemeMode' of its setter 'themeMode'.]
  // [answer : https://stackoverflow.com/questions/68880179/flutter-2-compilation-error-on-getter-the-return-type-of-getter-loading-is ] get 앞에 ThemeMode 붙였음
  // getter 와 setter 의 기본은 이렇게 쓰는데 밑에거는 사실 의미가 없는거지.. 뭐가 다른걸 한다면 되지만
  ThemeMode get themeMode => _themeMode; // 이제는 get 함수 구현하는것 어렵지 않지?

  set themeMode(ThemeMode themeMode) { _themeMode = themeMode; }

  toggleTheme(bool isDark){
    _themeMode = isDark?ThemeMode.dark:ThemeMode.light;
    notifyListeners();
  }

}