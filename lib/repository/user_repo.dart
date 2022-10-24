import 'package:cloud_firestore/cloud_firestore.dart';

import '../model/contact_model.dart';

Future addUser(User user) async {
  final docUser = FirebaseFirestore.instance.collection('contacts').doc();
  user.id = docUser.id;
  await docUser.set(user.ToJson());
}
