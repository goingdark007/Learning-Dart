/// Interface class example
// An interface is just a contract it says any class that implements me must define these methods.
abstract class PaymentGateway {

  // abstract methods or functions
  void cashOut (double amount);
  void cashIn (double amount);
}


/// Implementing the interface class using 'implements' keyword
class Bkash implements PaymentGateway {


  // overriding the abstract methods with our own implementation
  // using @override annotation
  @override
  void cashIn(double amount) {
    print("Cash out charge 20 taka per 1000 taka");
  }

  @override
  void cashOut(double amount) {
    print("Cash in free");
  }
}


// Implementing the interface class using 'implements' keyword
class Nagad implements PaymentGateway {


  // overriding the abstract methods with our own implementation
  // using @override annotation
  @override
  void cashIn(double amount) {
    print("Cash out charge 10 taka per 1000 taka");
  }

  @override
  void cashOut(double amount) {
    print("Cash in free");
  }
}

void main () {

  /// creating object of the interface class using Polymorphism
  // Polymorphism allows our PaymentGateway variable to point to different
  // objects (Bkash, Nagad), and the correct overridden method is executed at
  // runtime depending on the object type. polymorphism is like same method
  // call: .cashIn(amount); but different behaviors depending on the object (Bkash or Nagad)
  PaymentGateway payment1 = Bkash();
  payment1.cashIn(5000);
  payment1.cashOut(5000);

  PaymentGateway payment2 = Nagad();
  payment2.cashIn(10000);
  payment2.cashOut(8000);

}