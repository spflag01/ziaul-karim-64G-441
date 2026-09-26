T findLargest<T extends num>(T a, T b) {
  if (a > b) {
    return a;
  } else {
    return b;
  }
}

void main() {
  print(findLargest<int>(10, 20));
  print(findLargest<double>(15.5, 10.5));
}