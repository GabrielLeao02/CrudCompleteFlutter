import 'package:crud_complete/components/user_tile.dart';
import 'package:crud_complete/data/dummy_users.dart';
import 'package:flutter/material.dart';

class UserList extends StatelessWidget {
  const UserList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final users = {...DUMMY_USERS}; //Banco com usuarios
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Lista de usuarios',
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (ctx, i) => UserTile(users.values.elementAt(i)),
      ),
    );
  }
}
