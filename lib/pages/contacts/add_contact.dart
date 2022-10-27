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
    final _ctrLastname = TextEditingController();
    final _ctrPseudonym = TextEditingController();
    final _ctrTelephone = TextEditingController();
    final _ctrEmail = TextEditingController();
    final _ctrSocialNetwork = TextEditingController();
    final _ctrImportantDate = TextEditingController();
    final _ctrComments = TextEditingController();

    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Theme.of(context).primaryColor,
          title: Text(
            "Добавить контакт",
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
                  labelText: 'имя*',
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
                  labelText: 'фамилия*',
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
                controller: _ctrLastname,
                style: TextStyle(fontSize: 22),
                decoration: InputDecoration(
                  labelText: 'отчество*',
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
                  labelText: 'псевдоним*',
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
                  labelText: 'телефон*',
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
                  labelText: 'электронная почта*',
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
                  labelText: 'соц.сети*',
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
                controller: _ctrImportantDate,
                style: TextStyle(fontSize: 22),
                decoration: InputDecoration(
                  labelText: 'значимые даты*',
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
                  labelText: 'комментарии*',
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
                      lastname: _ctrLastname.text,
                      pseudonym: _ctrPseudonym.text,
                      telephone: int.parse(_ctrTelephone.text),
                      email: _ctrEmail.text,
                      socialNetwork: _ctrSocialNetwork.text,
                      importantDate: _ctrImportantDate.text,
                      comments: _ctrComments.text);
                  Navigator.pop(context);

                  addUser(user);
                  _ctrName.text = "";
                  _ctrSurname.text = "";
                  _ctrLastname.text = "";
                  _ctrPseudonym.text = "";
                  _ctrTelephone.text = "";
                  _ctrEmail.text = "";
                  _ctrSocialNetwork.text = "";
                  _ctrImportantDate.text = "";
                  _ctrComments.text = "";
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
