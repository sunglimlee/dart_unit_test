import 'package:flutter/material.dart';

class MyStatefulBuilderExample extends StatelessWidget {
  const MyStatefulBuilderExample({Key? key}) : super(key: key);

  // https://stackoverflow.com/questions/67671681/set-statefulbuilder-state-outside-of-statefulbuilder-widget
  // 지금 또 이것도 함수를 밖으로 빼서 이제 더 자유스럽게 값을 넣을 수 있다.
  // 원래 값을 변경하려면 GetX 를 쓰던지 Provider 를 쓰던지 아니면 setState 를 사용하든지 해서 값을 바꿀 수 있는데 이것보다 더 쉽게 할 수 있다.
  // 그냥 StatelessWidget 에서 StatefulBuilder 로 갑싸면 그때부터는 자동으로 업데이트가 된다. 아주 효과적이네.. 그값을 나중에 GetX 에 넣어주어도 되겠다.
  // 한가지 기억나? 저장되는 변수는 반드시 StatefulBuilder 밖에 있어야 한다는 것
  @override
  Widget build(BuildContext context) {
    int count = 0; // StatefulBuilder 에서 사용될 변수
    late StateSetter setter; // 신기하다. StateSetter 라는 typedef 가 존재하는지 어떻게 알았을까???????????????
    t() {
      count++;
    }

    return Center(
        child: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          StatefulBuilder(
            builder: (BuildContext context,
                void Function(void Function()) setState) {
              setter = setState;
              return Text('${count.toString()} 입니다.');
            },
          ),
          const SizedBox(
            height: 20,
          ),
          TextButton(
              onPressed: () {
                setter(t);
              },
              child: const Text('Press me to add')),
        ],
      ),
    ));
  }
}
