// ignore: unused_import
// ignore_for_file: avoid_print

add(int n1,int n2) {
  print(n1+n2);
}

Function calc1 = add;

Function calc2 = (int n1,int n2) {
  return n1+n2;
};


var calc3 = (int n1,int n2) => n1 + n2;

var callc = (int n1,int n2) {
  return n1+n2;
};