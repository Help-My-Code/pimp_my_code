import 'package:dartz/dartz.dart';
import 'package:pimp_my_code/core/usecase.dart';
import 'package:pimp_my_code/domain/repositories/content_repository.dart';

import '../../entities/content.dart';

class GetPublicationsByUserIdUseCase extends UseCase<List<Content>, String> {
  final ContentRepository contents;

  GetPublicationsByUserIdUseCase(this.contents);

  @override
  Future<Either<GetPublicationFailed, List<Content>>> call(
    String params,
  ) async {
    return contents.getPublicationsByUserId(userId: params);
  }
}
