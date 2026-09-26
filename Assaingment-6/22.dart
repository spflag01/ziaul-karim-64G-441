mixin LoggerMixin {
  void logMessage(String message) {
    print("Log: $message");
  }
}

class User with LoggerMixin {
  void userAction() {
    logMessage("User logged in");
  }
}

class Product with LoggerMixin {
  void productAction() {
    logMessage("Product added");
  }
}

void main() {
  User user = User();
  Product product = Product();

  user.userAction();
  product.productAction();
}