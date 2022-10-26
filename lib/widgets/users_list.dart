import 'package:flutter/material.dart';
import 'package:phone_book_app/repository/user_repo.dart';

import '../model/contact_model.dart';

class ListUsers extends StatefulWidget {
  List<User> users;
  ListUsers({required this.users});

  @override
  State<ListUsers> createState() => _ListUsersState();
}

class _ListUsersState extends State<ListUsers> {
  @override
  Widget build(BuildContext context) {
    final allUsers = widget.users;
    final _ctrUpdateName = TextEditingController();
    final _ctrUpdateSurname = TextEditingController();
    final _ctrUpdateLastname = TextEditingController();
    final _ctrUpdateTelephone = TextEditingController();

    return ListView.builder(
        itemCount: allUsers.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Theme.of(context).primaryColor,
                child: Text(
                  allUsers[index].name.substring(0, 2).toUpperCase(),
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              title: Text(
                allUsers[index].name,
                style: TextStyle(fontSize: 15),
              ),
              subtitle: Text(allUsers[index].telephone.toString()),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text('Update: ${allUsers[index].name}'),
                          content: SingleChildScrollView(
                            child: Container(
                              child: Column(
                                children: [
                                  TextField(
                                    style: TextStyle(
                                        fontSize: 22, color: Colors.blue),
                                    decoration: InputDecoration(
                                        labelText: "Name",
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(40)))),
                                    controller: _ctrUpdateName,
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  TextField(
                                    style: TextStyle(
                                        fontSize: 22, color: Colors.blue),
                                    decoration: InputDecoration(
                                        labelText: "Surname",
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(40)))),
                                    controller: _ctrUpdateSurname,
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  TextField(
                                    style: TextStyle(
                                        fontSize: 22, color: Colors.blue),
                                    decoration: InputDecoration(
                                        labelText: "Telephone",
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(40)))),
                                    controller: _ctrUpdateTelephone,
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      final user = User(
                                          id: allUsers[index].id,
                                          name: _ctrUpdateName.text,
                                          surname: _ctrUpdateSurname.text,
                                          telephone: int.parse(
                                              _ctrUpdateTelephone.text));
                                      updateUser(user);
                                    },
                                    child: Container(
                                      width: double.infinity,
                                      child: Text("Update"),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          actions: [
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(context, "Cancel");
                                },
                                child: Text("Cancel"))
                          ],
                        ),
                      );
                    },
                    child: Icon(
                      Icons.edit,
                      size: 20,
                      color: Colors.green,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                title: Text(
                                    "Do you want to delete a contact ${allUsers[index].name}?"),
                                actions: [
                                  ElevatedButton(
                                    onPressed: () {
                                      deleteUser(allUsers[index].id);
                                      Navigator.pop(context, 'yes');
                                    },
                                    child: Text("yes"),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.pop(context, "cancel");
                                    },
                                    child: Text("no"),
                                  ),
                                ],
                              ));
                    },
                    child: Icon(
                      Icons.delete,
                      size: 20,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
