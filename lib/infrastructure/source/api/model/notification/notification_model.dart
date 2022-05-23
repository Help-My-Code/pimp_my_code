import 'package:freezed_annotation/freezed_annotation.dart';
import '../group/group_model.dart';
import '../user/user_model.dart';

part 'notification_model.freezed.dart';
part 'notification_model.g.dart';

@freezed
class ApiNotificationModel with _$ApiNotificationModel {
  const factory ApiNotificationModel({
    required String id,
    @JsonKey(name: 'date_hour') required DateTime dateHour,
    @JsonKey(name: 'is_seen') required bool isSeen,
    @JsonKey(name: 'notification_type') required String notificationType,
    @JsonKey(name: 'group_linked') ApiGroupModel? groupLinked,
    @JsonKey(name: 'content_linked') String? contentLinked,
    @JsonKey(name: 'user_recipient') required ApiUserModel userRecipient,
    @JsonKey(name: 'user_linked') ApiUserModel? userLinked,
  }) = _ApiNotificationModel;

  factory ApiNotificationModel.fromJson(Map<String, dynamic> json) =>
      _$ApiNotificationModelFromJson(json);
}
