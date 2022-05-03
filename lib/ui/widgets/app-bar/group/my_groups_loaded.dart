import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:pimp_my_code/domain/entities/group.dart';
import 'package:pimp_my_code/ui/default_pictures.dart';

class MyGroupsLoaded extends StatelessWidget {
  final List<Group> groups;

  const MyGroupsLoaded({
    Key? key,
    required this.groups,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          const SizedBox(height: 10),
          if (groups.isNotEmpty)
            RichText(
              text: TextSpan(
                children: [
                  const WidgetSpan(
                    child: Icon(Icons.group),
                  ),
                  TextSpan(
                    text: '   ' + 'my_groups'.tr(),
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          const SizedBox(height: 10),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
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
                              DefaultPictures.defaultUserPicture,
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
