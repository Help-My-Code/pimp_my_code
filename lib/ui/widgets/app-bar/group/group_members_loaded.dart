import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:pimp_my_code/domain/entities/enum/role.dart';
import 'package:pimp_my_code/domain/entities/group.dart';
import 'package:pimp_my_code/domain/entities/group_member.dart';

import '../../../default_pictures.dart';

class GroupMembersLoaded extends StatelessWidget {
  final List<GroupMember> groupMembers;

  const GroupMembersLoaded({
    Key? key,
    required this.groupMembers,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          const SizedBox(height: 10),
          if (groupMembers.isNotEmpty)
            RichText(
              text: TextSpan(
                children: [
                  const WidgetSpan(
                    child: Icon(Icons.group),
                  ),
                  TextSpan(
                    text: '   ' + 'groups_im_member_of'.tr(),
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          const SizedBox(height: 10),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
            child: ListView.builder(
              itemCount: groupMembers.length,
              itemBuilder: (context, index) {
                return Column(children: <Widget>[
                  if(groupMembers[index].userRole == Role.member)
                  Row(
                    children: <Widget>[
                      GFAvatar(
                        size: 20,
                        backgroundImage: NetworkImage(
                          groupMembers[index].group.principalPictureUrl ??
                              DefaultPictures.defaultUserPicture,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(groupMembers[index].group.name,
                          style: const TextStyle(fontSize: 16)),
                    ],
                  ),
                  const SizedBox(height: 5),
                ]);
              },
            ),
          ),
          const SizedBox(height: 10),
          if (groupMembers.isNotEmpty)
            RichText(
              text: TextSpan(
                children: [
                  const WidgetSpan(
                    child: Icon(Icons.group),
                  ),
                  TextSpan(
                    text: '   ' + 'groups_im_admin_of'.tr(),
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          const SizedBox(height: 10),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
            child: ListView.builder(
              itemCount: groupMembers.length,
              itemBuilder: (context, index) {
                return Column(children: <Widget>[
                  if(groupMembers[index].userRole == Role.admin)
                    Row(
                      children: <Widget>[
                        GFAvatar(
                          size: 20,
                          backgroundImage: NetworkImage(
                            groupMembers[index].group.principalPictureUrl ??
                                DefaultPictures.defaultUserPicture,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(groupMembers[index].group.name,
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
