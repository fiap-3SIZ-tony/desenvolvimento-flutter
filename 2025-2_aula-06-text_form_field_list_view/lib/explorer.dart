class Explorer {
  final String name;
  final String age;

  Explorer({required this.name, required this.age});

  String presenterName(){
    return "Nome: $name";
  }

  String presenterAge(){
    return "Idade: $age";
  }
}