import 'package:crud_complete/models/user.dart';
import 'package:flutter/material.dart';

class UserTile extends StatelessWidget {
  final User user;

   const UserTile(this.user);
  @override
  Widget build(BuildContext context) {
    final avatar = user.avatarUrl.isEmpty  || user.avatarUrl == null
        ? const CircleAvatar(child: Icon(Icons.person))
        : CircleAvatar(
            backgroundImage: NetworkImage(user.avatarUrl),
          );
    return ListTile(
      leading: avatar,
      title: Text(user.nome),
      subtitle: Text(user.email),
      trailing: SizedBox(
        width: 100,
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.edit),
              color: Colors.orange,
            ),
            IconButton(onPressed: (){}, icon: const Icon(Icons.delete),
            color: Colors.red,)
          ],
        ),
      ),
    );
  }
}
