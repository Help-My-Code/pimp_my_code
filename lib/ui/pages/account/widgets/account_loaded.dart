import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/shape/gf_button_shape.dart';
import 'package:pimp_my_code/ui/pages/account/widgets/update_user_modal.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../../../../domain/entities/user.dart';
import '../../../../ioc_container.dart';
import '../../../../state/like/like_cubit.dart';
import '../../../../state/retrieve_content_by_user_id/retrieve_content_by_user_id_cubit.dart';
import '../../../../state/retrieve_follow_by_follower_id/retrieve_follow_by_follower_id_cubit.dart';
import '../../../../state/retrieve_follow_by_user_id/retrieve_follow_by_user_id_cubit.dart';
import '../../../default_pictures.dart';
import '../../../widgets/loading.dart';
import '../../home/widgets/publications_loaded.dart';

class AccountLoaded extends StatelessWidget {
  final User user;
  final bool isUserConnected;
  final BuildContext context;

  const AccountLoaded(
      {Key? key,
      required this.user,
      required this.isUserConnected,
      required this.context})
      : super(key: key);

  void printUpdate() {
    Alert(
      context: context,
      title: 'update_informations'.tr(),
      content: UpdateUserModal(),
      buttons: [],
    ).show();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.03),
          child: Row(
            children: <Widget>[
              GFAvatar(
                size: MediaQuery.of(context).size.width * 0.08,
                backgroundImage: const NetworkImage(
                  DefaultPictures.defaultUserPicture,
                ),
              ),
              const SizedBox(width: 30),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(user.firstname + ' ' + user.lastname,
                        style: const TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 10),
                    BlocConsumer<RetrieveFollowByFollowerIdCubit,
                            RetrieveFollowByFollowerIdState>(
                        listener: (context, state) {
                      state.maybeWhen(
                        orElse: () {},
                        failure: () {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: const Text('Failed_to_load_follows').tr(),
                            backgroundColor: Theme.of(context).errorColor,
                          ));
                        },
                      );
                    }, builder: (context, state) {
                      return state.maybeWhen(
                        initial: () {
                          context
                              .read<RetrieveFollowByFollowerIdCubit>()
                              .loadFollowByFollowerId(user.id);
                          return const Loading();
                        },
                        orElse: () => const Loading(),
                        loaded: (followers) => Text(
                            followers.length.toString() + 'followers'.tr(),
                            style: const TextStyle(fontSize: 16)),
                      );
                    }),
                    BlocConsumer<RetrieveFollowByUserIdCubit,
                            RetrieveFollowByUserIdState>(
                        listener: (context, state) {
                      state.maybeWhen(
                        orElse: () {},
                        failure: () {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: const Text('Failed_to_load_follows').tr(),
                            backgroundColor: Theme.of(context).errorColor,
                          ));
                        },
                      );
                    }, builder: (context, state) {
                      return state.maybeWhen(
                        initial: () {
                          context
                              .read<RetrieveFollowByUserIdCubit>()
                              .loadFollowByUserId(user.id);
                          return const Loading();
                        },
                        orElse: () => const Loading(),
                        loaded: (followers) => Text(
                            followers.length.toString() + 'following'.tr(),
                            style: const TextStyle(fontSize: 16)),
                      );
                    }),
                    const SizedBox(height: 10),
                    Text(user.description ?? '',
                        style: const TextStyle(fontSize: 16)),
                  ],
                ),
              ),
              SizedBox(width: MediaQuery.of(context).size.width * 0.09),
              if (isUserConnected)
                GFButton(
                  onPressed: () => printUpdate(),
                  text: tr('edit_profile'),
                  shape: GFButtonShape.standard,
                  color: Colors.amber,
                  icon: const Icon(Icons.edit, color: Colors.white),
                ),
              if (!isUserConnected)
                //TODO afficher follow/unflollow selon
                GFButton(
                  onPressed: () {},
                  text: tr('follow'),
                  shape: GFButtonShape.standard,
                  color: Colors.amber,
                  icon: const Icon(Icons.add, color: Colors.white),
                ),
              // GFButton(
              //   onPressed: () {},
              //   text: tr('unfollow'),
              //   shape: GFButtonShape.standard,
              //   color: Colors.amber,
              //   icon: const Icon(Icons.remove, color: Colors.white),
              // ),
            ],
          ),
        ),
        BlocConsumer<RetrieveContentByUserIdCubit,
            RetrieveContentByUserIdState>(
          listener: (context, state) {
            state.maybeWhen(
              orElse: () {},
              failure: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: const Text('Failed_to_load_publications').tr(),
                  ),
                );
              },
            );
          },
          builder: (context, state) {
            return state.maybeWhen(
              initial: () {
                context
                    .read<RetrieveContentByUserIdCubit>()
                    .loadPublication(user.id);
                return const Loading();
              },
              orElse: () => const Loading(),
              loaded: (publications) => Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    Flexible(
                      child: BlocProvider(
                          create: (context) => LikeCubit(
                                sl(),
                                null,
                                context.read<RetrieveContentByUserIdCubit>(),
                                sl(),
                              ),
                          child:
                              PublicationsLoaded(publications: publications)),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
