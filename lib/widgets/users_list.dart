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
    final _ctrUpdatePseudonym = TextEditingController();
    final _ctrUpdateTelephone = TextEditingController();
    final _ctrUpdateEmail = TextEditingController();
    final _ctrUpdateSocialNetwork = TextEditingController();
    final _ctrUpdateImportantDate = TextEditingController();
    final _ctrUpdateComments = TextEditingController();

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
                                title: Text(allUsers[index].name),
                                content: SingleChildScrollView(
                                    child: Container(
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                            '??????: ${allUsers[index].name}'),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        child: Text(
                                            '??????????????: ${allUsers[index].surname}'),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        child: Text(
                                            '????????????????: ${allUsers[index].lastname}'),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        child: Text(
                                            '??????????????????: ${allUsers[index].pseudonym}'),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        child: Text(
                                            '??????????????: ${allUsers[index].telephone}'),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        child: Text(
                                            '??????????: ${allUsers[index].email}'),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        child: Text(
                                            '??????.????????: ${allUsers[index].socialNetwork}'),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        child: Text(
                                            '???????????? ????????: ${allUsers[index].importantDate}'),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        child: Text(
                                            '??????????????????????: ${allUsers[index].comments}'),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      ElevatedButton(
                                          onPressed: () {
                                            Navigator.pop(context, "ok");
                                          },
                                          child: Text("ok"))
                                    ],
                                  ),
                                )),
                              ));
                    },
                    child: Icon(
                      Icons.visibility,
                      size: 20,
                      color: Colors.blue,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text('????????????????: ${allUsers[index].name}'),
                          content: SingleChildScrollView(
                            child: Container(
                              child: Column(
                                children: [
                                  TextField(
                                    style: TextStyle(
                                        fontSize: 22, color: Colors.blue),
                                    decoration: InputDecoration(
                                        labelText: "??????",
                                      
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
                                        labelText: "??????????????",
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
                                        labelText: "????????????????",
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(40)))),
                                    controller: _ctrUpdateLastname,
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  TextField(
                                    style: TextStyle(
                                        fontSize: 22, color: Colors.blue),
                                    decoration: InputDecoration(
                                        labelText: "??????????????????",
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(40)))),
                                    controller: _ctrUpdatePseudonym,
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  TextField(
                                    style: TextStyle(
                                        fontSize: 22, color: Colors.blue),
                                    decoration: InputDecoration(
                                        labelText: "??????????????",
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(40)))),
                                    controller: _ctrUpdateTelephone,
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  TextField(
                                    style: TextStyle(
                                        fontSize: 22, color: Colors.blue),
                                    decoration: InputDecoration(
                                        labelText: "?????????????????????? ??????????",
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(40)))),
                                    controller: _ctrUpdateEmail,
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  TextField(
                                    style: TextStyle(
                                        fontSize: 22, color: Colors.blue),
                                    decoration: InputDecoration(
                                        labelText: "??????.????????",
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(40)))),
                                    controller: _ctrUpdateSocialNetwork,
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  TextField(
                                    style: TextStyle(
                                        fontSize: 22, color: Colors.blue),
                                    decoration: InputDecoration(
                                        labelText: "???????????????? ????????",
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(40)))),
                                    controller: _ctrUpdateImportantDate,
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  TextField(
                                    style: TextStyle(
                                        fontSize: 22, color: Colors.blue),
                                    decoration: InputDecoration(
                                        labelText: "??????????????????????",
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(40)))),
                                    controller: _ctrUpdateComments,
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
                                          lastname: _ctrUpdateLastname.text,
                                          pseudonym: _ctrUpdatePseudonym.text,
                                          telephone: int.parse(
                                              _ctrUpdateTelephone.text),
                                          email: _ctrUpdateEmail.text,
                                          socialNetwork:
                                              _ctrUpdateSocialNetwork.text,
                                          importantDate:
                                              _ctrUpdateImportantDate.text,
                                          comments: _ctrUpdateComments.text);
                                      updateUser(user);
                                      Navigator.pop(context);
                                    },
                                    child: Container(
                                      width: double.infinity,
                                      child: Text("????????????????"),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          actions: [
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(context, "??????????");
                                },
                                child: Text("??????????"))
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
                                    "???? ???????????? ?????????????? ???????? ?????????????? ${allUsers[index].name}?"),
                                actions: [
                                  ElevatedButton(
                                    onPressed: () {
                                      deleteUser(allUsers[index].id);
                                      Navigator.pop(context, 'yes');
                                    },
                                    child: Text("????"),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.pop(context, "??????????");
                                    },
                                    child: Text("??????"),
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
