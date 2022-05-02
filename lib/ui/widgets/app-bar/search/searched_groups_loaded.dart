import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:pimp_my_code/domain/entities/group.dart';

class SearchedGroupsLoaded extends StatelessWidget {
  final List<Group> groups;

  const SearchedGroupsLoaded({
    Key? key,
    required this.groups,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          const SizedBox(height: 20),
          if (groups.isNotEmpty) const Text('groups').tr(),
          const SizedBox(height: 10),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.25,
            child: ListView.builder(
              itemCount: groups.length,
              itemBuilder: (context, index) {
                return Column(children: <Widget>[
                  Row(
                    children: <Widget>[
                      GFAvatar(
                        size: 20,
                        backgroundImage: NetworkImage(
                          groups[index].principalPictureUrl ??
                              'https://upload.wikimedia.org/wikipedia/commons/thumb/5/59/User-avatar.svg/120px-User-avatar.svg.png?20201213175635',
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(groups[index].name,
                          style: const TextStyle(fontSize: 16)),
                    ],
                  ),
                  const SizedBox(height: 5),
                ]);
              },
            ),
          ),
        ],
      ),
    );
  }
}