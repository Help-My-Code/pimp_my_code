import 'package:dartz/dartz.dart';

import '../../../core/failure.dart';
import '../../../core/usecase.dart';
import '../../repositories/content_repository.dart';

class UpdateContentUseCase extends UseCase<UpdateContentSuccess, UpdateContentParams> {
  UpdateContentUseCase(this.repository);

  final ContentRepository repository;

  @override
  Future<Either<UpdateContentFailed, UpdateContentSuccess>> call(
    UpdateContentParams params,
  ) async {
    return repository.updateContent(
      params.contentId,
      params.title,
      params.content,
    );
  }
}

class UpdateContentParams {
  UpdateContentParams(
    this.contentId,
    this.title,
    this.content,
  );

  final String contentId;
  final String title;
  final String content;
}

class UpdateContentFailed extends Failure {}

class UpdateContentSuccess {}
