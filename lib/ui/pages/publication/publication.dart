import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pimp_my_code/state/retrieve_publication/retrieve_publication_cubit.dart';
import 'package:pimp_my_code/ui/pages/home/widgets/post_card.dart';
import 'package:pimp_my_code/ui/widgets/loading.dart';

import '../../../domain/entities/enum/content_type.dart';
import '../../../state/like/like_cubit.dart';
import '../../../utils/like_helper.dart';

class Publication extends StatelessWidget {
  const Publication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RetrievePublicationCubit, RetrievePublicationState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const Loading(),
          loaded: (publication) => PostCard(
            contentType: ContentType.publication,
            contentId: publication.id!,
            onLikePressed: () =>
                onLikePress(context.read<LikeCubit>(), publication),
            onUnlikePressed: () =>
                onDislikePress(context.read<LikeCubit>(), publication),
            codes: publication.code == null ? [''] : [publication.code!],
            title: publication.title,
            post: publication.content,
            images: publication.medias,
            imageURL: publication.userPicture != null
                ? publication.userPicture!
                : 'https://cdn.pixabay.com/photo/2017/12/03/18/04/christmas-balls-2995437_960_720.jpg',
            username: publication.username,
            date: DateFormat('dd MMMM yyyy').format(publication.createdAt),
            isLiked: publication.isLike,
            isDisliked: publication.isDislike,
            likeCount: publication.numberOfLikes.toString(),
            unlikeCount: publication.numberOfDislikes.toString(),
            commentaryCount: publication.numberOfComments.toString(),
          ),
        );
      },
    );
  }
}
