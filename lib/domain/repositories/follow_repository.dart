import 'package:dartz/dartz.dart';

import '../entities/follow.dart';
import '../usecases/follow/find_follow_by_follower_id.dart';
import '../usecases/follow/find_follow_by_user_id.dart';

abstract class FollowRepository {
  Future<Either<FindFollowByFollowerIdFailure, List<Follow>>>
      getFollowByFollowerId({required String id});

  Future<Either<FindFollowByUserIdFailure, List<Follow>>> getFollowByUserId(
      {required String id});
}