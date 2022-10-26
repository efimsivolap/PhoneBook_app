import 'package:flutter/material.dart';
import 'package:phone_book_app/pages/contacts/settings.dart';
import 'package:phone_book_app/pages/home_page.dart';
import 'package:phone_book_app/repository/user_repo.dart';

import '../../model/contact_model.dart';
import 'dashboard.dart';

class AddContact extends StatefulWidget {
  const AddContact({super.key});

  @override
  State<AddContact> createState() => _AddContactState();
}

class _AddContactState extends State<AddContact> {
  @override
  Widget build(BuildContext context) {
    final _ctrName = TextEditingController();
    final _ctrSurname = TextEditingController();
    final _ctrTelephone = TextEditingController();

    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Theme.of(context).primaryColor,
          title: Text(
            "Add Contact",
            style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
          )),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              TextField(
                controller: _ctrName,
                style: TextStyle(fontSize: 22),
                decoration: InputDecoration(
                  labelText: 'name*',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(40),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: _ctrSurname,
                style: TextStyle(fontSize: 22),
                decoration: InputDecoration(
                  labelText: 'surname*',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(40),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: _ctrTelephone,
                style: TextStyle(fontSize: 22),
                decoration: InputDecoration(
                  labelText: 'telephone*',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(40),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).primaryColor),
                onPressed: () {
                  final user = User(
                      name: _ctrName.text,
                      surname: _ctrSurname.text,
                      telephone: int.parse(_ctrTelephone.text));
                  Navigator.pop(context);

                  addUser(user);
                  _ctrName.text = "";
                  _ctrSurname.text = "";

                  _ctrTelephone.text = "";
                },
                child: Container(
                  width: double.infinity,
                  child: Icon(Icons.add),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
