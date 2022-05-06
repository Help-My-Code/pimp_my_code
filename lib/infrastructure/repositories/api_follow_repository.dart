import 'package:dartz/dartz.dart';

import '../../core/failure.dart';
import '../../domain/entities/follow.dart';
import '../../domain/entities/user.dart';
import '../../domain/repositories/follow_repository.dart';
import '../../domain/repositories/user_repository.dart';
import '../../domain/usecases/follow/find_follow_by_follower_id.dart';
import '../../domain/usecases/user/find_user_by_id.dart';
import '../../domain/usecases/user/find_user_by_name.dart';
import '../converter/follow_mapper.dart';
import '../converter/user_mapper.dart';
import '../source/api/command/follow.dart';
import '../source/api/command/user.dart';
import '../source/api/model/follow/follow_model.dart';
import '../source/api/model/user/user_model.dart';

class ApiFollowRepository extends FollowRepository {
  final FollowInteractor _dataSource;
  final FollowMapper _followMapper;

  ApiFollowRepository(this._dataSource, this._followMapper);

  @override
  Future<Either<FindFollowByFollowerIdFailure, List<Follow>>> getFollowByFollowerId({required String id}) async {
    final response = await _dataSource.getByFollowerId(id);
    final List<Map<String, dynamic>> apiFollows = List.from(response.body['follow']);
    return Right(
      apiFollows
          .map(ApiFollowModel.fromJson)
          .map(_followMapper.mapApiFollowToFollow)
          .toList()
    );
  }
}
