import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/shape/gf_button_shape.dart';
import 'package:pimp_my_code/domain/entities/enum/confidentiality.dart';
import 'package:pimp_my_code/domain/entities/follow.dart';
import 'package:pimp_my_code/ui/pages/account/widgets/update_user_modal.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../../../../core/form_status.dart';
import '../../../../domain/entities/user.dart';
import '../../../../ioc_container.dart';
import '../../../../state/follow_user/follow_user_bloc.dart';
import '../../../../state/like/like_cubit.dart';
import '../../../../state/retrieve_content/retrieve_content_cubit.dart';
import '../../../../state/retrieve_follow_by_follower_id/retrieve_follow_by_follower_id_cubit.dart';
import '../../../../state/retrieve_follow_by_user_id/retrieve_follow_by_user_id_cubit.dart';
import '../../../../state/session/session_cubit.dart';
import '../../../../state/unfollow_user/unfollow_user_bloc.dart';
import '../../../../state/update_user/update_user_bloc.dart';
import '../../../default_pictures.dart';
import '../../../widgets/loading.dart';
import '../../home/widgets/publications_loaded.dart';

class AccountLoaded extends StatelessWidget {
  final User user;
  final bool isUserConnected;
  final BuildContext context;
  List<Follow> followers = [];
  List<Follow> followings = [];

  final _formKey = GlobalKey<FormState>();

  AccountLoaded(
      {Key? key,
      required this.user,
      required this.isUserConnected,
      required this.context})
      : super(key: key);

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
              _buildAvatar(context),
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
                    _buildFollowers(context),
                    _buildFollowings(context),
                    const SizedBox(height: 10),
                    Text(user.description ?? '',
                        style: const TextStyle(fontSize: 16)),
                  ],
                ),
              ),
              SizedBox(width: MediaQuery.of(context).size.width * 0.09),
              _buildButton(context),
            ],
          ),
        ),
        _buildPublications(context),
      ],
    );
  }

  _buildAvatar(BuildContext context) {
    return GFAvatar(
      size: MediaQuery.of(context).size.width * 0.08,
      backgroundImage: NetworkImage(
        user.principalPictureUrl ?? DefaultPictures.defaultUserPicture,
      ),
    );
  }

  _buildFollowings(BuildContext context) {
    return BlocConsumer<RetrieveFollowByFollowerIdCubit,
        RetrieveFollowByFollowerIdState>(listener: (context, state) {
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
          loaded: (followings) => loadFollowings(followings));
    });
  }

  _buildFollowers(BuildContext context) {
    return BlocConsumer<RetrieveFollowByUserIdCubit,
        RetrieveFollowByUserIdState>(listener: (context, state) {
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
          loaded: (followers) => loadFollowers(followers));
    });
  }

  _buildButton(BuildContext context) {
    return FutureBuilder<String>(
        future: context.read<SessionCubit>().getUserId(),
        builder: (context, AsyncSnapshot<String> snapshot) {
          if (snapshot.hasData) {
            if (isUserConnected) {
              return GFButton(
                onPressed: () => printUpdate(),
                text: tr('edit_profile'),
                shape: GFButtonShape.standard,
                color: Colors.amber,
                icon: const Icon(Icons.edit, color: Colors.white),
              );
            } else {
              if (followersContainCurrentUser(snapshot.data!)) {
                return _buildUnfollowButton(context);
              }
              return _buildFollowButton(context);
            }
          } else {
            return const CircularProgressIndicator();
          }
        });
  }

  _buildFollowButton(BuildContext context) {
    return BlocConsumer<FollowUserBloc, FollowUserState>(
      listener: (context, state) {
        if (state.status is FormSubmissionSuccessful) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: const Text('follow_success').tr(),
            backgroundColor: Colors.green,
          ));
          //TODO recharger la page
        }
        if (state.status is FormSubmissionFailed) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: const Text('follow_failed').tr(),
            backgroundColor: Theme.of(context).errorColor,
          ));
          //TODO recharger la page
        }
      },
      builder: (context, state) {
        return Form(
            key: _formKey,
            child: GFButton(
              onPressed: () {
                if (_formKey.currentState != null &&
                    _formKey.currentState!.validate() &&
                    state.status is FormNotSent) {
                  context
                      .read<FollowUserBloc>()
                      .add(FollowUserEvent.submit(user.id));
                }
              },
              text: tr('follow'),
              shape: GFButtonShape.standard,
              color: Colors.amber,
              icon: const Icon(Icons.add, color: Colors.white),
            ));
      },
    );
  }

  _buildUnfollowButton(BuildContext context) {
    return BlocConsumer<UnfollowUserBloc, UnfollowUserState>(
      listener: (context, state) {
        if (state.status is FormSubmissionSuccessful) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: const Text('unfollow_success').tr(),
            backgroundColor: Colors.green,
          ));
          //TODO recharger la page
        }
        if (state.status is FormSubmissionFailed) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: const Text('unfollow_failed').tr(),
            backgroundColor: Theme.of(context).errorColor,
          ));
          //TODO recharger la page
        }
      },
      builder: (context, state) {
        return Form(
            key: _formKey,
            child: GFButton(
              onPressed: () {
                if (_formKey.currentState != null &&
                    _formKey.currentState!.validate() &&
                    state.status is FormNotSent) {
                  context
                      .read<UnfollowUserBloc>()
                      .add(UnfollowUserEvent.submit(user.id));
                }
              },
              text: tr('unfollow'),
              shape: GFButtonShape.standard,
              color: Colors.amber,
              icon: const Icon(Icons.remove, color: Colors.white),
            ));
      },
    );
  }

  _buildPublications(BuildContext context) {
    return FutureBuilder<String>(
        future: context.read<SessionCubit>().getUserId(),
        builder: (context, AsyncSnapshot<String> snapshot) {
          if (snapshot.hasData) {
            if (user.confidentiality == Confidentiality.public ||
                followersContainCurrentUser(snapshot.data!) ||
                user.id == snapshot.data) {
              return BlocConsumer<RetrieveContentCubit, RetrieveContentState>(
                listener: (context, state) {
                  state.maybeWhen(
                    orElse: () {},
                    failure: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content:
                              const Text('Failed_to_load_publications').tr(),
                        ),
                      );
                    },
                  );
                },
                builder: (context, state) {
                  return state.maybeWhen(
                    initial: () {
                      context
                          .read<RetrieveContentCubit>()
                          .loadPublicationByUserId(user.id);
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
                                      contentRepository: sl(),
                                      retrieveContentCubit:
                                          context.read<RetrieveContentCubit>(),
                                      sessionCubit: sl(),
                                    ),
                                child: PublicationsLoaded(
                                    publications: publications,
                                ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            } else {
              return Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.5,
                child: Text(
                  'private_user'.tr(),
                  style: const TextStyle(fontSize: 16),
                ),
              );
            }
          } else {
            return const CircularProgressIndicator();
          }
        });
  }

  void printUpdate() {
    Alert(
      context: context,
      title: 'update_informations'.tr(),
      content: BlocProvider(
          create: (context) => sl<UpdateUserBloc>(),
          child: UpdateUserModal(user: user)),
      buttons: [],
    ).show();
  }

  loadFollowers(followers) {
    this.followers = followers;
    return Text(followers.length.toString() + 'followers'.tr(),
        style: const TextStyle(fontSize: 16));
  }

  loadFollowings(followings) {
    this.followings = followings;
    return Text(followings.length.toString() + 'following'.tr(),
        style: const TextStyle(fontSize: 16));
  }

  bool followersContainCurrentUser(String userId) {
    for (var follower in followers) {
      if (follower.follower.id == userId) return true;
    }
    return false;
  }
}
