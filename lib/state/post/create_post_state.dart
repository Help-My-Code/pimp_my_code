part of 'create_post_cubit.dart';

@freezed
class CreatePostState with _$CreatePostState {
  const CreatePostState._();

  const factory CreatePostState({
    String? title,
    String? content,
    String? userPicture,
    String? username,
    DateTime? createdAt,
    List<String>? medias,
    String? code,
    String? codeResult,
    String? parentId,
    String? groupId,
    Either<Failure, Unit>? failureOrSuccessOption,
    required ContentType contentType,
    required String language,
    required bool isLoading,
    required bool isCompiling,
  }) = _CreatePostState;

  factory CreatePostState.initial() => CreatePostState(
        username: 'username',
        userPicture:
            'https://cdn.pixabay.com/photo/2018/08/28/12/41/avatar-3637425__340.png',
        createdAt: DateTime.now(),
        medias: [],
        isLoading: false,
        isCompiling: false,
        language: 'PYTHON',
        contentType: ContentType.publication,
      );
}
