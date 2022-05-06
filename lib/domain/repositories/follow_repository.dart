import 'package:dartz/dartz.dart';

import '../../core/failure.dart';
import '../entities/follow.dart';
import '../entities/user.dart';
import '../usecases/follow/find_follow_by_follower_id.dart';
import '../usecases/user/find_user_by_id.dart';
import '../usecases/user/find_user_by_name.dart';

abstract class FollowRepository {
  Future<Either<FindFollowByFollowerIdFailure, List<Follow>>> getFollowByFollowerId({required String id});
}
