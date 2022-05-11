import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:pimp_my_code/domain/entities/enum/content_type.dart';
import '../../../../domain/entities/content/content.dart';
import 'post_card.dart';

class CommentModal extends StatelessWidget {
  CommentModal({Key? key}) : super(key: key);
  final List<Content> comments = [
    Content(
      id: '1',
      title: 'un titre bien long du style j\'ai la réponse a ta question',
      content:
          'lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      isLike: true,
      isDislike: false,
      contentType: ContentType.comment,
      createdAt: DateTime.now(),
      creatorId: '1',
      username: 'Swann HERREREA',
      medias: [
        'https://images.pexels.com/photos/8003045/pexels-photo-8003045.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
        'https://images.pexels.com/photos/10027304/pexels-photo-10027304.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
      ],
      numberOfLikes: 0,
      numberOfComments: 0,
      numberOfDislikes: 0,
    ),
    Content(
      id: '1',
      title: 'un titre bien long du style j\'ai la réponse a ta question',
      content:
          'lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      isLike: true,
      isDislike: false,
      contentType: ContentType.comment,
      createdAt: DateTime.now(),
      creatorId: '1',
      username: 'Swann HERREREA',
      medias: [
        'https://images.pexels.com/photos/8003045/pexels-photo-8003045.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
        'https://images.pexels.com/photos/10027304/pexels-photo-10027304.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
      ],
      code: 'print("Hello World");',
      codeResult: 'Hello World',
      numberOfLikes: 0,
      numberOfComments: 0,
      numberOfDislikes: 0,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.8,
      width: MediaQuery.of(context).size.width * 0.8,
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemBuilder: ((context, index) {
                return PostCard(
                  contentId: comments[index].id!,
                  onLikePressed: () {},
                  onUnlikePressed: () {},
                  onCommentaryPressed: () {},
                  codes: comments[index].code == null
                      ? ['']
                      : [comments[index].code!],
                  title: comments[index].title,
                  post: comments[index].content,
                  images: comments[index].medias,
                  imageURL: comments[index].userPicture != null
                      ? comments[index].userPicture!
                      : 'https://cdn.pixabay.com/photo/2017/12/03/18/04/christmas-balls-2995437_960_720.jpg',
                  username: comments[index].username,
                  date: DateFormat('dd MMMM yyyy')
                      .format(comments[index].createdAt),
                  isLiked: comments[index].isLike,
                  isDisliked: comments[index].isDislike,
                  likeCount: comments[index].numberOfLikes.toString(),
                  unlikeCount: comments[index].numberOfDislikes.toString(),
                  commentaryCount: comments[index].numberOfComments.toString(),
                );
              }),
              itemCount: comments.length,
            ),
          ),
          TextField(
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              hintText: 'add_your_comment'.tr(),
            ),
            minLines: 6,
            maxLines: 20,
          ),
        ],
      ),
    );
  }
}
