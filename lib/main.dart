import 'package:dart_unit_test/widgets/passing_by_reference.dart';
import 'package:dart_unit_test/widgets/use_factory_keyword.dart';
import 'package:flutter/material.dart';

void main() {
  //runApp(const PassingByReferenceTest());
  //var customer1 = Customer._origin;
  var customer2 = Customer.create();
   //|print(customer1.hashCode);
   print(customer2.hashCode);


}
