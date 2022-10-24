import 'package:flutter/material.dart';
import 'package:phone_book_app/repository/user_repo.dart';

import '../../model/contact_model.dart';

class AddContact extends StatelessWidget {
  const AddContact({super.key});

  @override
  Widget build(BuildContext context) {
    final _ctrName = TextEditingController();
    final _ctrSurname = TextEditingController();
    final _ctrLastName = TextEditingController();
    final _ctrPseudonym = TextEditingController();
    final _ctrTelephone = TextEditingController();
    final _ctrEmail = TextEditingController();
    final _ctrSocialNetwork = TextEditingController();
    final _ctrImportantDates = TextEditingController();
    final _ctrComments = TextEditingController();

    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Theme.of(context).primaryColor,
          title: Text(
            "Add Contact",
            style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
          )),
      body: Container(
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
                controller: _ctrLastName,
                style: TextStyle(fontSize: 22),
                decoration: InputDecoration(
                  labelText: 'last name*',
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
                controller: _ctrPseudonym,
                style: TextStyle(fontSize: 22),
                decoration: InputDecoration(
                  labelText: 'pseudonym*',
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
              TextField(
                controller: _ctrEmail,
                style: TextStyle(fontSize: 22),
                decoration: InputDecoration(
                  labelText: 'email*',
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
                controller: _ctrSocialNetwork,
                style: TextStyle(fontSize: 22),
                decoration: InputDecoration(
                  labelText: 'social network*',
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
                controller: _ctrImportantDates,
                style: TextStyle(fontSize: 22),
                decoration: InputDecoration(
                  labelText: 'important dates*',
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
                controller: _ctrComments,
                style: TextStyle(fontSize: 22),
                decoration: InputDecoration(
                  labelText: 'comments*',
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
                      lastName: _ctrLastName.text,
                      pseudonym: _ctrPseudonym.text,
                      telephone: int.parse(_ctrTelephone.text),
                      email: _ctrEmail.text,
                      socialNetwork: _ctrSocialNetwork.text,
                      importantDates: int.parse(_ctrImportantDates.text),
                      comments: _ctrComments.text);
                  addUser(user);
                },
                child: Container(
                  width: double.infinity,
                  child: Icon(Icons.add),
                ),
              ),
            ],
          )),
    );
  }
}
