class BankAccount {
  double balance;

  BankAccount(this.balance);

  void deposit(double amount) {
    balance = balance + amount;
    print("Balance: $balance");
  }

  void withdraw(double amount) {
    if (amount <= balance) {
      balance = balance - amount;
      print("Balance: $balance");
    } else {
      print("Insufficient balance");
    }
  }
}

void main() {
  BankAccount account = BankAccount(5000);

  account.deposit(2000);
  account.withdraw(1500);
}