class User {
  String id;
  String name;
  String surname;
  String lastName;
  String pseudonym;
  int telephone;
  String email;
  String socialNetwork;
  int importantDates;
  String comments;

  User(
      {this.id = "",
      required this.name,
      required this.surname,
      required this.lastName,
      required this.pseudonym,
      required this.telephone,
      required this.email,
      required this.socialNetwork,
      required this.importantDates,
      required this.comments});

  Map<String, dynamic> ToJson() {
    return {
      "id": id,
      "name": name,
      "surname": surname,
      "lasName": lastName,
      "pseudonym": pseudonym,
      "telephone": telephone,
      "email": email,
      "socialNetwork": socialNetwork,
      "importantDates": importantDates,
      "comments": comments
    };
  }

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        id: json['id'],
        name: json['name'],
        surname: json['surname'],
        lastName: json['lastName'],
        pseudonym: json['pseudonym'],
        telephone: json['telephone'],
        email: json['email'],
        socialNetwork: json['socialNetwork'],
        importantDates: json['importantDates'],
        comments: json['comments']);
  }
}
