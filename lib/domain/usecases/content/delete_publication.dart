import 'package:dartz/dartz.dart';

import '../../../core/failure.dart';
import '../../../core/usecase.dart';
import '../../repositories/content_repository.dart';

class DeleteContentUseCase extends UseCase<DeleteContentSuccess, DeleteContentParam> {
  DeleteContentUseCase(this.repository);

  final ContentRepository repository;

  @override
  Future<Either<DeleteContentFailed, DeleteContentSuccess>> call(
    DeleteContentParam params,
  ) async {
    return repository.deleteContent(params.contentId);
  }
}

class DeleteContentParam {
  DeleteContentParam(this.contentId);

  final String contentId;
}

class DeleteContentFailed extends Failure {}

class DeleteContentSuccess {}
