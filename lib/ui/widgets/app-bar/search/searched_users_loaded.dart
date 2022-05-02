import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:pimp_my_code/domain/entities/user.dart';

class SearchedUsersLoaded extends StatelessWidget {
  final List<User> users;

  const SearchedUsersLoaded({
    Key? key,
    required this.users,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          const SizedBox(height: 20),
          if (users.isNotEmpty) const Text('users').tr(),
          const SizedBox(height: 10),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.25,
            child: ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                return Column(children: <Widget>[
                  Row(
                    children: <Widget>[
                      GFAvatar(
                        size: 20,
                        backgroundImage: NetworkImage(
                          users[index].principalPictureUrl ??
                              'https://upload.wikimedia.org/wikipedia/commons/thumb/5/59/User-avatar.svg/120px-User-avatar.svg.png?20201213175635',
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(users[index].firstname + ' ' + users[index].lastname,
                          style: const TextStyle(fontSize: 16)),
                    ],
                  ),
                  const SizedBox(height: 10),
                ]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
