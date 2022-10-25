import 'package:cloud_firestore/cloud_firestore.dart';

import '../model/contact_model.dart';

Future addUser(User user) async {
  final docUser = FirebaseFirestore.instance.collection('users2').doc();
  user.id = docUser.id;
  await docUser.set(user.toJson());
}

Future updateUser(User user) async {
  final docUser = FirebaseFirestore.instance.collection('users2').doc(user.id);
  await docUser.update(user.toJson());
}

Future deleteUser(String id) async {
  final docUser = FirebaseFirestore.instance.collection("users2").doc(id);
  await docUser.delete();
}
