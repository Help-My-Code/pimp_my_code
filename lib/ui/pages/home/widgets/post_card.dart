import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:go_router/go_router.dart';
import 'package:pimp_my_code/domain/entities/enum/content_type.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import '../../../widgets/code_editor/code_showroom.dart';
import '../../../widgets/image_full_screen_wrapper/image_full_screen_wrapper.dart';
import 'share_modal.dart';

class PostCard extends StatelessWidget {
  const PostCard({
    Key? key,
    required this.post,
    required this.imageURL,
    required this.username,
    required this.date,
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
    required this.isLiked,
    required this.isDisliked,
    required this.contentId,
    required this.contentType,
  }) : super(key: key);

  final String language;
  final ContentType contentType;
  final String? title;
  final List<String>? images;
  final String imageURL;
  final String contentId;
  final String username;
  final String date;
  final String post;
  final List<String>? codes;
  final String likeCount, unlikeCount, commentaryCount;
  final Function()? onLikePressed, onUnlikePressed, onCommentaryPressed;
  final bool isLiked;
  final bool isDisliked;

  void onSharePress(BuildContext context) {
    Alert(
      context: context,
      title: 'share'.tr(),
      content: ShareModal(contentId),
    ).show();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GFCard(
          boxFit: BoxFit.cover,
          title: GFListTile(
            onTap: () {
              if (contentType == ContentType.publication) {
                context.go('/publication/$contentId');
              }
            },
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
              if (images != null && images!.isNotEmpty)
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
                  isDisliked ? Icons.thumb_down : Icons.thumb_down_outlined,
                ),
                shape: GFButtonShape.square,
                type: GFButtonType.transparent,
              ),
              if (contentType == ContentType.publication)
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
              onSharePress(context);
            },
            child: const Icon(Icons.share),
          ),
        )
      ],
    );
  }
}
