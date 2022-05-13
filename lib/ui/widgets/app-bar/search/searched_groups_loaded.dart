import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:go_router/go_router.dart';
import '../../../../domain/entities/group.dart';

import '../../../default_pictures.dart';
import '../../../router/routes.dart';

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
            height: MediaQuery.of(context).size.height * 0.20,
            child: ListView.builder(
              itemCount: groups.length,
              itemBuilder: (context, index) {
                return Column(children: <Widget>[
                  GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: () {
                      Navigator.pop(context);
                      GoRouter.of(context)
                          .go(Routes.group.path + '?groupId=' + groups[index].id, extra: false);
                    },
                    child: Row(
                      children: <Widget>[
                        GFAvatar(
                          size: 20,
                          backgroundImage: NetworkImage(
                            groups[index].principalPictureUrl ??
                                DefaultPictures.defaultUserPicture,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(groups[index].name,
                            style: const TextStyle(fontSize: 16)),
                      ],
                    ),
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
