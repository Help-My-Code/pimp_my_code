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
    String? code,
    String? codeResult,
    String? parentId,
    String? groupId,
    Either<Failure, Unit>? failureOrSuccessOption,
    required List<String?> medias,
    required ContentType contentType,
    required String language,
    required bool isLoading,
    required bool isCompiling,
  }) = _CreatePostState;

  factory CreatePostState.initial() => CreatePostState(
        username: 'username',
        userPicture: DefaultPictures.defaultUserPicture,
        createdAt: DateTime.now(),
        medias: [null, null, null],
        isLoading: false,
        isCompiling: false,
        language: 'PYTHON',
        contentType: ContentType.publication,
      );
}
