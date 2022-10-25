import 'package:flutter/material.dart';
import 'package:phone_book_app/repository/user_repo.dart';

import '../../model/contact_model.dart';

class AddContact extends StatelessWidget {
  const AddContact({super.key});

  @override
  Widget build(BuildContext context) {
    final _ctrName = TextEditingController();
    final _ctrAge = TextEditingController();

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
                  controller: _ctrAge,
                  style: TextStyle(fontSize: 22),
                  decoration: InputDecoration(
                    labelText: 'age*',
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
                    final user =
                        User(name: _ctrName.text, age: int.parse(_ctrAge.text));

                    addUser(user);
                    _ctrName.text = "";
                    _ctrAge.text = "";
                  },
                  child: Container(
                    width: double.infinity,
                    child: Icon(Icons.add),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
