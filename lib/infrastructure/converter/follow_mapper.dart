import 'package:pimp_my_code/infrastructure/converter/user_mapper.dart';

import '../../domain/entities/enum/status.dart';
import '../../domain/entities/follow.dart';
import '../source/api/model/follow/follow_model.dart';

class FollowMapper {

  final UserMapper _userMapper;

  FollowMapper(this._userMapper);

  Status _statusFromString(String string) {
    switch (string) {
      case 'ACCEPTED':
        return Status.accepted;
      case 'REFUSED':
        return Status.refused;
      default:
        return Status.pendingInvit;
    }
  }

  Follow mapApiFollowToFollow(ApiFollowModel apiFollowModel) {
    return Follow(
      id: apiFollowModel.id,
      followStatus: _statusFromString(apiFollowModel.followStatus),
      follower: _userMapper.mapApiUserToUser(apiFollowModel.follower),
      user: _userMapper.mapApiUserToUser(apiFollowModel.user),
    );
  }
}
