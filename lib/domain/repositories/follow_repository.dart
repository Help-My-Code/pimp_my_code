import 'package:dartz/dartz.dart';
import 'package:pimp_my_code/domain/entities/user.dart';

import '../entities/enum/notification_type.dart';
import '../entities/follow.dart';
import '../usecases/follow/create_follow.dart';
import '../usecases/follow/delete_follow.dart';
import '../usecases/follow/find_follow_by_follower_id.dart';
import '../usecases/follow/find_follow_by_user_id.dart';
import '../usecases/follow/update_follow.dart';

abstract class FollowRepository {
  Future<Either<FindFollowByFollowerIdFailure, List<Follow>>>
      getFollowByFollowerId({required String id});

  Future<Either<FindFollowByUserIdFailure, List<Follow>>> getFollowByUserId(
      {required String id});

  Future<Either<CreateFollowFailed, CreateFollowSuccess>> createFollow(
      {required String userId, required String followerId});

  Future<Either<DeleteFollowFailed, DeleteFollowSuccess>> deleteFollow(
      {required String userId, required String followerId});

  Future<Either<UpdateFollowFailed, UpdateFollowSuccess>> updateFollow(
      {required NotificationType notificationType,
      required String followerId,
      required String userId});
}
