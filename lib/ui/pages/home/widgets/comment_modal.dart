import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pimp_my_code/domain/entities/enum/content_type.dart';
import 'package:pimp_my_code/state/like/like_cubit.dart';
import '../../../../domain/entities/content/content.dart';
import '../../../../ioc_container.dart';
import '../../../../state/retrieve_content/retrieve_content_cubit.dart';
import 'post_card.dart';

class CommentModal extends StatelessWidget {
  CommentModal(this.parentId, {Key? key}) : super(key: key);
  final String parentId;
  final List<Content> comments = [];
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              sl<RetrieveContentCubit>()..loadComment(parentId),
        ),
        BlocProvider(
          create: (context) => LikeCubit(
            contentRepository: sl(),
            retrieveContentCubit: context.read<RetrieveContentCubit>(),
            sessionCubit: sl(),
          ),
        ),
      ],
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.8,
        width: MediaQuery.of(context).size.width * 0.8,
        child: BlocBuilder<RetrieveContentCubit, RetrieveContentState>(
          builder: (context, state) {
            return state.maybeWhen(
              loaded: (comments) => _buildCommentList(comments),
              orElse: () => const Center(child: CircularProgressIndicator()),
            );
          },
        ),
      ),
    );
  }

  Column _buildCommentList(List<Content> comments) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemBuilder: ((context, index) {
              return PostCard(
                contentType: ContentType.comment,
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
    );
  }
}
