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
}) = _CreatePostState;

factory CreatePostState.initial() => const CreatePostState(isLoading: false, language: 'PYTHON');
}

