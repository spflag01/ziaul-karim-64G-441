abstract class Payment {
  void pay();
}

class CashPayment extends Payment {
  @override
  void pay() {
    print("Payment made using Cash");
  }
}

class CardPayment extends Payment {
  @override
  void pay() {
    print("Payment made using Card");
  }
}

void main() {
  CashPayment cash = CashPayment();
  CardPayment card = CardPayment();

  cash.pay();
  card.pay();
}