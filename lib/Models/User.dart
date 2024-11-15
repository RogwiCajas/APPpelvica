class User {
  final String name;
  final int age;
  final bool isEmbarazo;
  final bool isPostParto;
  final int valor;

  User({
    required this.name,
    required this.age,
    required this.isEmbarazo,
    required this.isPostParto,
    required this.valor,
  });
  User.empty()
      : name = '',
        age = 18,
        isEmbarazo = false,
        isPostParto = false,
        valor = 1;
}
