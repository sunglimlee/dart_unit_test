import 'package:flutter/material.dart';

class myCard extends StatelessWidget {
  const myCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: 200, height: 200,
      child: Container(
        child: Card(
          color: Color(0xFFd4a373),
          shadowColor: Color(0xFFbc6c25),
          child: Text(
            "김치 캐나다", textDirection: TextDirection.ltr, style: TextStyle(
            fontSize: 40,
          ),
          ),
        ),
      ),
    );
  }

}

f2(Color myColor) {
  return myColor;
}
