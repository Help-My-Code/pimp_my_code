import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:pimp_my_code/domain/entities/enum/content_type.dart';
import 'package:pimp_my_code/state/like/like_cubit.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../../../../domain/entities/content/content.dart';
import 'comment_modal.dart';
import 'create_post_card.dart';
import 'post_card.dart';

class PublicationsLoaded extends StatelessWidget {
  final List<Content> publications;

  void onLikePress(LikeCubit likeCubit, Content publication) {
    if (publication.isLike) {
      likeCubit.unlike(publication.id!);
    } else {
      likeCubit.like(publication.id!);
    }
  }

  void onDislikePress(LikeCubit likeCubit, Content publication) {
    if (publication.isDislike) {
      likeCubit.undislike(publication.id!);
    } else {
      likeCubit.dislike(publication.id!);
    }
  }

  void showComments(BuildContext context, Content content) {
    Alert(
      context: context,
      title: 'comments'.tr(),
      content: CommentModal(content.id!),
      buttons: [
        DialogButton(
            onPressed: () {
              showMaterialModalBottomSheet(
                context: context,
                builder: (context) => CreatePostCard(contentId: content.id!),
              );
            },
            child: const Text('add_comment').tr()),
      ],
    ).show();
  }

  const PublicationsLoaded({
    Key? key,
    required this.publications,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: publications.length,
      itemBuilder: (context, index) {
        return PostCard(
          contentType: ContentType.publication,
          contentId: publications[index].id!,
          onLikePressed: () =>
              onLikePress(context.read<LikeCubit>(), publications[index]),
          onUnlikePressed: () =>
              onDislikePress(context.read<LikeCubit>(), publications[index]),
          onCommentaryPressed: () => showComments(context, publications[index]),
          codes: publications[index].code == null
              ? ['']
              : [publications[index].code!],
          title: publications[index].title,
          post: publications[index].content,
          images: publications[index].medias,
          imageURL: publications[index].userPicture != null
              ? publications[index].userPicture!
              : 'https://cdn.pixabay.com/photo/2017/12/03/18/04/christmas-balls-2995437_960_720.jpg',
          username: publications[index].username,
          date:
              DateFormat('dd MMMM yyyy').format(publications[index].createdAt),
          isLiked: publications[index].isLike,
          isDisliked: publications[index].isDislike,
          likeCount: publications[index].numberOfLikes.toString(),
          unlikeCount: publications[index].numberOfDislikes.toString(),
          commentaryCount: publications[index].numberOfComments.toString(),
        );
      },
    );
  }
}
