import 'package:dart_unit_test/widgets/Animated_container.dart';
import 'package:dart_unit_test/widgets/image_related/hero_widget.dart';
import 'package:dart_unit_test/widgets/my_stateful_builder.dart';
import 'package:dart_unit_test/widgets/platform_check.dart';
import 'package:dart_unit_test/widgets/singleton/singleton.dart';
import 'package:flutter/material.dart';
import 'package:dart_unit_test/widgets/future_async_await.dart';
import 'package:dart_unit_test/widgets/passing_by_reference.dart';
import 'package:dart_unit_test/widgets/stack_example.dart';
import 'package:dart_unit_test/widgets/use_factory_keyword.dart';
import 'package:dart_unit_test/widgets/silver_floating_app_bar.dart';

void main() {
  // inflate Widget
  runApp(const MyApp());
}

// create StatelessWidget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // has to override build method
  @override
  Widget build(BuildContext context) {
    // return MaterialApp for Google Material Theme for entire Screen as a top parent
    // apply some Theme
    return MaterialApp(
      title: 'NoteKeeper.',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const SingletonUse(),
    );
  }
}

/*
void main() {
  //runApp(const PassingByReferenceTest());
  //var customer1 = Customer._origin;
  var customer2 = Customer.create();
   //|print(customer1.hashCode);
   print(customer2.hashCode);


}
*/
