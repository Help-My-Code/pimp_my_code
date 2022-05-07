import 'enum/status.dart';
import 'user.dart';

class Follow {
  final String id;
  final Status followStatus;
  final User follower;
  final User user;

  Follow({
    required this.id,
    required this.followStatus,
    required this.follower,
    required this.user,
  });
}
