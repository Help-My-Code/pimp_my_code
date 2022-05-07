import 'package:dartz/dartz.dart';
import '../../../core/usecase.dart';
import '../../repositories/content_repository.dart';

import '../../entities/content/content.dart';

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
