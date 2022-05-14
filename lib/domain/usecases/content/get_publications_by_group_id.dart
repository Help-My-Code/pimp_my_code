import 'package:dartz/dartz.dart';
import '../../../core/usecase.dart';
import '../../repositories/content_repository.dart';

import '../../entities/content/content.dart';

class GetPublicationsByGroupIdUseCase extends UseCase<List<Content>, String> {
  final ContentRepository repository;

  GetPublicationsByGroupIdUseCase(this.repository);

  @override
  Future<Either<GetPublicationFailed, List<Content>>> call(
    String params,
  ) async {
    return repository.getPublicationsByGroupId(groupId: params);
  }
}
