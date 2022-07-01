class Customer {
  String name;
  int age;
  String location;

  Customer(this.name, this.age, this.location);

  static final Customer _origin = Customer("", 0, "");

  // factory constructor
  // We can use the factory keyword for a constructor that return an object instead of creating a new instance.
  // Your sister's house is another object (another instance of class House).
  factory Customer.create() {
    return _origin;
  }
}
