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
  required String language,
  required bool isLoading,
  required Option<Either<Failure, Unit>> failureOrSuccessOption,
}) = _CreatePostState;

factory CreatePostState.initial() => CreatePostState(isLoading: false, language: 'PYTHON', failureOrSuccessOption: none());
}

