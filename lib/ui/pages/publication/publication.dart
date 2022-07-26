import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pimp_my_code/ioc_container.dart';
import 'package:pimp_my_code/state/retrieve_publication/retrieve_publication_cubit.dart';
import 'package:pimp_my_code/ui/pages/home/widgets/post_card.dart';
import 'package:pimp_my_code/ui/widgets/loading.dart';

import '../../../domain/entities/enum/content_type.dart';
import '../../../state/like/like_cubit.dart';
import '../../../utils/like_helper.dart';
import '../../default_pictures.dart';

class Publication extends StatelessWidget {
  const Publication({Key? key, required this.allowOwnerActions})
      : super(key: key);

  final bool allowOwnerActions;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<RetrievePublicationCubit, RetrievePublicationState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => const Loading(),
            loaded: (publication) => PostCard(
              allowOwnerActions: allowOwnerActions,
              sessionCubit: sl(),
              contentType: ContentType.publication,
              contentId: publication.id!,
              onLikePressed: () =>
                  onLikePress(context.read<LikeCubit>(), publication),
              onUnlikePressed: () =>
                  onDislikePress(context.read<LikeCubit>(), publication),
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
