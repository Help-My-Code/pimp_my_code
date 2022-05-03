import 'package:chopper/chopper.dart';

part 'notification.chopper.dart';

@ChopperApi(baseUrl: '/notification')
abstract class NotificationInteractor extends ChopperService {
  static NotificationInteractor create([ChopperClient? client]) =>
      _$NotificationInteractor(client);

  @Put(path: '/seeAllNotificationsByUserId')
  Future<Response> seeAllNotificationsByUserId(@Query() String userId);

  @Get(path: '/getByUserId')
  Future<Response> getByUserId(@Query() String userId);
}
