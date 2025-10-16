void main() {
  List<String> friends = [
    "Arohi",
    "Najakat",
    "Ruhi",
    "Akansha",
    "Pari",
    "Akshara",
    "Maisha"
  ];

  List<String> startWithA =
      friends.where((element) => element.startsWith("A")).toList();

  print(startWithA);
}