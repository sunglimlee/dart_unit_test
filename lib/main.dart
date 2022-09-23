import 'package:dart_unit_test/widgets/future_async_await.dart';
import 'package:dart_unit_test/widgets/passing_by_reference.dart';
import 'package:dart_unit_test/widgets/stack_example.dart';
import 'package:dart_unit_test/widgets/use_factory_keyword.dart';
import 'package:flutter/material.dart';


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
      title: 'NoteKeeper',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const FutureAsyncAwait(),
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
