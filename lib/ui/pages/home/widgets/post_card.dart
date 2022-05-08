import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import '../../../widgets/code_editor/code_showroom.dart';
import '../../../widgets/image_full_screen_wrapper/image_full_screen_wrapper.dart';

class PostCard extends StatelessWidget {
  const PostCard({
    Key? key,
    required this.post,
    required this.imageURL,
    required this.username,
    required this.date,
    required this.onSharePress,
    this.language = 'dart',
    this.title,
    this.images,
    this.codes,
    this.likeCount = '0',
    this.unlikeCount = '0',
    this.commentaryCount = '0',
    this.onLikePressed,
    this.onUnlikePressed,
    this.onCommentaryPressed,
    this.isLiked = false,
  }) : super(key: key);

  final String language;
  final String? title;
  final List<String>? images;
  final String imageURL;
  final String username;
  final String date;
  final String post;
  final List<String>? codes;
  final String likeCount, unlikeCount, commentaryCount;
  final Function()? onLikePressed, onUnlikePressed, onCommentaryPressed;
  final Function() onSharePress;
  final bool isLiked;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GFCard(
          boxFit: BoxFit.cover,
          title: GFListTile(
            avatar: GFAvatar(
              backgroundImage: NetworkImage(imageURL),
            ),
            title: Text(
              username,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subTitle: Text(date),
          ),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (title != null)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Text(
                    title!,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              if (title != null)
                const SizedBox(
                  height: 20,
                ),
              if (images != null)
                GFItemsCarousel(
                  rowCount: 3,
                  children: images!.map(
                    (url) {
                      return Container(
                        margin: const EdgeInsets.all(5.0),
                        child: ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(5.0)),
                          child: ImageFullScreenWrapper(
                            url: url,
                            dark: true,
                          ),
                        ),
                      );
                    },
                  ).toList(),
                ),
              if (codes != null && codes!.first.isNotEmpty)
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 2.5),
                  child: CodeShowRoom(
                    data: codes!.first,
                    language: language,
                  ),
                ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                child: Text(
                  post,
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
          buttonBar: GFButtonBar(
            children: <Widget>[
              GFButton(
                textColor: Colors.black,
                onPressed: onLikePressed,
                text: likeCount,
                icon: Icon(isLiked ? Icons.thumb_up : Icons.thumb_up_outlined),
                shape: GFButtonShape.square,
                type: GFButtonType.transparent,
              ),
              GFButton(
                textColor: Colors.black,
                onPressed: onUnlikePressed,
                text: unlikeCount,
                icon: Icon(
                  isLiked
                      ? Icons.thumb_down_alt_outlined
                      : Icons.thumb_down_alt,
                ),
                shape: GFButtonShape.square,
                type: GFButtonType.transparent,
              ),
              GFButton(
                textColor: Colors.black,
                onPressed: onCommentaryPressed,
                text: commentaryCount,
                icon: const Icon(Icons.comment_outlined),
                shape: GFButtonShape.square,
                type: GFButtonType.transparent,
              ),
            ],
          ),
        ),
        Positioned(
          top: 50,
          right: 50,
          child: InkWell(
            onTap: () {
              print('hit button');
              onSharePress();
            },
            child: const Icon(Icons.share),
          ),
        )
      ],
    );
  }
}
