import 'package:dartz/dartz.dart';

import '../../domain/entities/follow.dart';
import '../../domain/repositories/follow_repository.dart';
import '../../domain/usecases/follow/find_follow_by_follower_id.dart';
import '../../domain/usecases/follow/find_follow_by_user_id.dart';
import '../converter/follow_mapper.dart';
import '../source/api/command/follow.dart';
import '../source/api/model/follow/follow_model.dart';

class ApiFollowRepository extends FollowRepository {
  final FollowInteractor _dataSource;
  final FollowMapper _followMapper;

  ApiFollowRepository(this._dataSource, this._followMapper);

  @override
  Future<Either<FindFollowByFollowerIdFailure, List<Follow>>>
      getFollowByFollowerId({required String id}) async {
    final response = await _dataSource.getByFollowerId(id);
    final List<Map<String, dynamic>> apiFollows =
        List.from(response.body['follow']);
    return Right(apiFollows
        .map(ApiFollowModel.fromJson)
        .map(_followMapper.mapApiFollowToFollow)
        .toList());
  }

  @override
  Future<Either<FindFollowByUserIdFailure, List<Follow>>> getFollowByUserId(
      {required String id}) async {
    final response = await _dataSource.getByUserId(id);
    final List<Map<String, dynamic>> apiFollows =
        List.from(response.body['follow']);
    return Right(apiFollows
        .map(ApiFollowModel.fromJson)
        .map(_followMapper.mapApiFollowToFollow)
        .toList());
  }
}
