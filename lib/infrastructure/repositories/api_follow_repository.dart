import 'package:dartz/dartz.dart';
import 'package:pimp_my_code/domain/entities/enum/status.dart';

import '../../domain/entities/enum/notification_type.dart';
import '../../domain/entities/follow.dart';
import '../../domain/repositories/follow_repository.dart';
import '../../domain/usecases/follow/create_follow.dart';
import '../../domain/usecases/follow/delete_follow.dart';
import '../../domain/usecases/follow/find_follow_by_follower_id.dart';
import '../../domain/usecases/follow/find_follow_by_user_id.dart';
import '../../domain/usecases/follow/update_follow.dart';
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

  @override
  Future<Either<CreateFollowFailed, CreateFollowSuccess>> createFollow(
      {required String userId, required String followerId}) async {
    try {
      await _dataSource.createFollow(fields: {
        'followerId': followerId,
        'userId': userId,
      });
      return Right(CreateFollowSuccess());
    } catch (e) {
      return Left(CreateFollowFailed());
    }
  }

  @override
  Future<Either<DeleteFollowFailed, DeleteFollowSuccess>> deleteFollow(
      {required String userId, required String followerId}) async {
    try {
      await _dataSource.deleteFollow(fields: {
        'followerId': followerId,
        'userId': userId,
      });
      return Right(DeleteFollowSuccess());
    } catch (e) {
      return Left(DeleteFollowFailed());
    }
  }

  @override
  Future<Either<UpdateFollowFailed, UpdateFollowSuccess>> updateFollow(
      {required NotificationType notificationType,
      required String followerId,
      required String userId}) async {
    try {
      await _dataSource.updateFollow(fields: {
        'followStatus': notificationType == NotificationType.followAccepted
            ? Status.accepted.name.toUpperCase()
            : Status.refused.name.toUpperCase(),
        'followerId': followerId,
        'userId': userId,
      });
      return Right(UpdateFollowSuccess());
    } catch (e) {
      return Left(UpdateFollowFailed());
    }
  }
}
