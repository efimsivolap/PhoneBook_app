import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:phone_book_app/widgets/users_list.dart';

import '../../model/contact_model.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    List<User> allUsers = [];
    return Scaffold(
        body: StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance
          .collection('users2')
          .orderBy('name')
          .snapshots(),
      builder: ((context, snp) {
        if (snp.hasError) {
          return Center(
            child: Text('Error'),
          );
        }
        if (snp.hasData) {
          allUsers = snp.data!.docs
              .map((doc) => User.fromJson(doc.data() as Map<String, dynamic>))
              .toList();
          return ListUsers(users: allUsers);
        } else {
          return Center(
            child: CircularProgressIndicator(
              color: Theme.of(context).primaryColor,
            ),
          );
        }
      }),
    ));
  }
}
