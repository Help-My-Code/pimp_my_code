import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:pimp_my_code/ioc_container.dart';
import 'package:pimp_my_code/state/retrieve_publication/retrieve_publication_cubit.dart';
import 'package:pimp_my_code/ui/pages/home/widgets/post_card.dart';
import 'package:pimp_my_code/ui/widgets/loading.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../../../domain/entities/content/content.dart';
import '../../../domain/entities/enum/content_type.dart';
import '../../../state/like/like_cubit.dart';
import '../../../state/retrieve_content/retrieve_content_cubit.dart';
import '../../../utils/like_helper.dart';
import '../../default_pictures.dart';
import '../home/widgets/comment_modal.dart';
import '../home/widgets/create_post_card.dart';

class Publication extends StatelessWidget {
  const Publication({Key? key, required this.allowOwnerActions})
      : super(key: key);

  final bool allowOwnerActions;

  void showComments(BuildContext context, Content content) {
    final contentCubit = sl<RetrieveContentCubit>()..loadComment(content.id!);
    Alert(
      context: context,
      title: 'comments'.tr(),
      content: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => contentCubit,
          ),
          BlocProvider(
            create: (context) => LikeCubit(
              contentRepository: sl(),
              sessionCubit: sl(),
              retrieveContentCubit: context.read<RetrieveContentCubit>(),
            ),
          ),
        ],
        child: CommentModal(content.id!),
      ),
      buttons: [
        DialogButton(
          onPressed: () async {
            await showMaterialModalBottomSheet(
              context: context,
              builder: (context) => CreatePostCard(contentId: content.id!),
            );
            contentCubit.loadComment(content.id!);
          },
          child: const Text('add_comment').tr(),
        ),
      ],
    ).show();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<RetrievePublicationCubit, RetrievePublicationState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => const Loading(),
            loaded: (publication) => PostCard(
              isFullPage: true,
              allowOwnerActions: allowOwnerActions,
              sessionCubit: sl(),
              contentType: ContentType.publication,
              contentId: publication.id!,
              onLikePressed: () =>
                  onLikePress(context.read<LikeCubit>(), publication),
              onUnlikePressed: () =>
                  onDislikePress(context.read<LikeCubit>(), publication),
              onCommentaryPressed: () => showComments(context, publication),
              reloadPublication: () => context
                  .read<RetrievePublicationCubit>()
                  .loadPublication(publication.id!),
              codes: publication.code == null ? [''] : [publication.code!],
              title: publication.title,
              post: publication.content,
              images: publication.medias,
              imageURL: publication.userPicture != null
                  ? publication.userPicture!
                  : DefaultPictures.defaultUserPicture,
              username: publication.username,
              creatorId: publication.creatorId,
              date: DateFormat('dd MMMM yyyy').format(publication.createdAt),
              isLiked: publication.isLike,
              isDisliked: publication.isDislike,
              likeCount: publication.numberOfLikes.toString(),
              unlikeCount: publication.numberOfDislikes.toString(),
              commentaryCount: publication.numberOfComments.toString(),
            ),
          );
        },
      ),
    );
  }
}
