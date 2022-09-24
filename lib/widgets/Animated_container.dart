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
    //double height = pressed ? 150 : 250;
    //Color color = pressed ? Colors.orangeAccent : Colors.green;

    return DefaultTabController(
      length: 3,
      child: Scaffold( // AnimatedContainer 를 사용하기 위해서는 반드시 Scaffold 로 감싸야 한다.
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.accessible_forward)),
              Tab(icon: Icon(Icons.add),),
              Tab(icon: Icon(Icons.account_circle_rounded),),
            ],
          ),
          title: const Text('Sunglim Lee'),
        ),
        body: const Center(
          child: TabBarView(
            children: [
              Icon(Icons.directions_car),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
            ],
          )
        ),
      ),
    );
  }
}

