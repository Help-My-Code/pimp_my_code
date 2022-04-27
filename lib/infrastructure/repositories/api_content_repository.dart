import 'package:pimp_my_code/core/failure.dart';

import 'package:dartz/dartz.dart';
import 'package:pimp_my_code/infrastructure/source/api/command/content.dart';
import 'package:pimp_my_code/infrastructure/source/api/model/content/content_model.dart';

import '../../domain/entities/content.dart';
import '../../domain/repositories/content_repository.dart';
import '../converter/content_mapper.dart';

class ApiContentRepository extends ContentRepository {
  final ContentInteractor _dataSource;
  final ContentMapper _contentMapper;
  ApiContentRepository(this._dataSource, this._contentMapper);
  @override
  Future<Either<Failure, Content>> createContent(Content content) {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, void>> deleteContent(String id) {
    throw UnimplementedError();
  }

  @override
  Future<Either<GetPublicationFailed, Content>> getContent(String id) {
    throw UnimplementedError();
  }

  @override
  Future<Either<GetPublicationFailed, List<Content>>> getContents() {
    throw UnimplementedError();
  }

  @override
  Future<Either<GetPublicationFailed, List<Content>>> getFollowingPublications({
    required String userId,
  }) async {
    final response = await _dataSource.getFollowingPublicationsByUserId(userId);
    ApiContentModel apiContentModel = ApiContentModel.fromJson(response.body);
    return Right(_contentMapper.mapApiContentToContent(apiContentModel));
  }

  @override
  Future<Either<Failure, Content>> updateContent(Content content) {
    throw UnimplementedError();
  }
}
