class User {
  String id;
  final String name;
  final String surname;
  final String lastname;
  final String pseudonym;
  final int telephone;
  final String email;
  final String socialNetwork;
  final String importantDate;
  final String comments;

  User({
    this.id = "",
    required this.name,
    required this.surname,
    required this.lastname,
    required this.pseudonym,
    required this.telephone,
    required this.email,
    required this.socialNetwork,
    required this.importantDate,
    required this.comments,
  });

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "name": name,
      "surname": surname,
      "lastname": lastname,
      "pseudonym": pseudonym,
      "telephone": telephone,
      "email": email,
      "socialNetwork": socialNetwork,
      "importantDate": importantDate,
      "comments": comments
    };
  }

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        id: json['id'],
        name: json['name'],
        surname: json['surname'],
        lastname: json['lastname'],
        pseudonym: json['pseudonym'],
        telephone: json['telephone'],
        email: json['email'],
        socialNetwork: json['socialNetwork'],
        importantDate: json['importantDate'],
        comments: json['comments']);
  }
}
