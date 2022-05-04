import 'package:dartz/dartz.dart';
import 'package:pimp_my_code/core/failure.dart';
import 'package:pimp_my_code/domain/entities/content.dart';
import 'package:pimp_my_code/domain/repositories/content_repository.dart';
import 'package:pimp_my_code/infrastructure/converter/content_mapper.dart';

import '../../../core/usecase.dart';
import '../../../ioc_container.dart';

class CreatePublicationUseCase extends UseCase<Content, CreatePublicationParam> {
  final ContentRepository _contentRepository;

  CreatePublicationUseCase(this._contentRepository);

  @override
  Future<Either<Failure, Content>> call(CreatePublicationParam params) async{
    final either = _contentRepository.createContent(ContentMapper(sl()).fromParam(params));
    return either;
  }
}

class CreatePublicationParam {
  String? title, code, codeResult, groupId, parentId;
  List<String> medias;
  String content, userPicture, username, creatorId, contentType;
  DateTime createdAt;

  CreatePublicationParam({
    this.title,
    this.code,
    this.codeResult,
    this.groupId,
    this.parentId,
    required this.createdAt,
    required this.creatorId,
    required this.contentType,
    required this.medias,
    required this.content,
    required this.userPicture,
    required this.username,
  });
}


class CreatePublicationFailure extends Failure {
  String message;

  CreatePublicationFailure(this.message);

}