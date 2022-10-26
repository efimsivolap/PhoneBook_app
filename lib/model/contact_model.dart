class User {
  String id;
  final String name;
  final String surname;
  final int telephone;

  User({
    this.id = "",
    required this.name,
    required this.surname,
    required this.telephone,
  });

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "name": name,
      "surname": surname,
      "telephone": telephone,
    };
  }

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        id: json['id'],
        name: json['name'],
        surname: json['surname'],
        telephone: json['telephone']);
  }
}
