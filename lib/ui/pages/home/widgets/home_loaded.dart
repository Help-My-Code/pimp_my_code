import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pimp_my_code/state/like/like_cubit.dart';
import 'package:pimp_my_code/state/retrieve_content/retrieve_content_cubit.dart';
import '../../../../domain/entities/content/content.dart';

import '../../../../ioc_container.dart';
import 'post_card.dart';

class HomeLoaded extends StatelessWidget {
  final List<Content> publications;

  void onLikePress(LikeCubit likeCubit, String publicationId) {
    likeCubit.like(publicationId);
  }

  void onDislikePress(LikeCubit likeCubit, String publicationId) {
    likeCubit.dislike(publicationId);
  }

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
            child: BlocProvider(
              create: (context) => LikeCubit(
                sl(),
                context.read<RetrieveContentCubit>(),
                sl(),
              ),
              child: ListView.builder(
                itemCount: publications.length,
                itemBuilder: (context, index) {
                  return PostCard(
                    onLikePressed: () => onLikePress(
                        context.read<LikeCubit>(), publications[index].id!),
                    onUnlikePressed: () => onDislikePress(
                        context.read<LikeCubit>(), publications[index].id!),
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
                    username: publications[index].username,
                    date: DateFormat('dd MMMM yyyy')
                        .format(publications[index].createdAt),
                    isLiked: publications[index].isLike,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
