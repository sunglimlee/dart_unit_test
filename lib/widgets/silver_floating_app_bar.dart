import 'dart:math';

import 'package:flutter/material.dart';

class SliverFloatingAppBarSteve extends StatelessWidget {
  const SliverFloatingAppBarSteve({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [const
          SliverAppBar(title: Text('Steve Lee'), floating: true,backgroundColor: Colors.orange,centerTitle: true,),
          SliverList(
              delegate: SliverChildListDelegate(
            List.generate(
              100,
              (index) => Container(
                width: 100,
                height: 100,
                color:
                    Colors.primaries[Random().nextInt(Colors.primaries.length)],
                child: Text('$index'),
              ),
            ),
          ))
        ],
      ),
    );
  }
}
