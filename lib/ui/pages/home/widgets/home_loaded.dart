import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../../domain/entities/content.dart';

import 'post_card.dart';

class HomeLoaded extends StatelessWidget {
  final List<Content> publications;

  const HomeLoaded({
    Key? key,
    required this.publications,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Flexible(
            child: ListView.builder(
              itemCount: publications.length,
              itemBuilder: (context, index) {
                return PostCard(
                  onLikePressed: () {},
                  onUnlikePressed: () {},
                  onCommentaryPressed: () {},
                  codes: publications[index].code == null
                      ? ['']
                      : [publications[index].code!],
                  title: publications[index].title,
                  post: publications[index].content,
                  images: publications[index].medias,
                  imageURL: publications[index].userPicture != null
                      ? publications[index].userPicture!
                      : 'https://cdn.pixabay.com/photo/2017/12/03/18/04/christmas-balls-2995437_960_720.jpg',
                  username: publications[index].username != null
                      ? publications[index].username!
                      : 'oui',
                  date: DateFormat('dd MMMM yyyy')
                      .format(publications[index].createdAt),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
