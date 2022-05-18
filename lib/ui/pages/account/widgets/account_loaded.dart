import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/shape/gf_button_shape.dart';
import 'package:pimp_my_code/domain/entities/enum/confidentiality.dart';
import 'package:pimp_my_code/domain/entities/follow.dart';
import 'package:pimp_my_code/state/retrieve_user/retrieve_user_cubit.dart';
import 'package:pimp_my_code/ui/pages/account/widgets/update_user_modal.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../../../../core/form_status.dart';
import '../../../../domain/entities/enum/status.dart';
import '../../../../domain/entities/user.dart';
import '../../../../ioc_container.dart';
import '../../../../state/follow_user/follow_user_bloc.dart';
import '../../../../state/like/like_cubit.dart';
import '../../../../state/retrieve_content/retrieve_content_cubit.dart';
import '../../../../state/retrieve_follow_by_follower_id/retrieve_follow_by_follower_id_cubit.dart';
import '../../../../state/retrieve_follow_by_user_id/retrieve_follow_by_user_id_cubit.dart';
import '../../../../state/retrieve_user_by_id/retrieve_user_by_id_cubit.dart';
import '../../../../state/session/session_cubit.dart';
import '../../../../state/unfollow_user/unfollow_user_bloc.dart';
import '../../../../state/update_user/update_user_bloc.dart';
import '../../../default_pictures.dart';
import '../../../widgets/loading.dart';
import '../../home/widgets/publications_loaded.dart';

class AccountLoaded extends StatefulWidget {
  const AccountLoaded({
    Key? key,
    required this.user,
    required this.context,
    required this.followers,
  }) : super(key: key);

  final User user;
  final BuildContext context;
  final List<Follow> followers;

  @override
  State<AccountLoaded> createState() => _AccountLoadedState();
}

class _AccountLoadedState extends State<AccountLoaded> {
  List<Follow> followings = [];

  final _formKey = GlobalKey<FormState>();

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
                    Text(widget.user.firstname + ' ' + widget.user.lastname,
                        style: const TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 10),
                    Text(widget.followers.length.toString() + 'followers'.tr(),
                        style: const TextStyle(fontSize: 16)),
                    _buildFollowings(context),
                    const SizedBox(height: 10),
                    Text(widget.user.description ?? '',
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
        widget.user.principalPictureUrl ?? DefaultPictures.defaultUserPicture,
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
                .loadFollowByFollowerId(widget.user.id);
            return const Loading();
          },
          orElse: () => const Loading(),
          loaded: (followings) => _loadFollowings(followings));
    });
  }

  _buildButton(BuildContext context) {
    return FutureBuilder<String>(
        future: context.read<SessionCubit>().getUserId(),
        builder: (context, AsyncSnapshot<String> snapshot) {
          if (snapshot.hasData) {
            if (widget.user.id == snapshot.data!) {
              return GFButton(
                onPressed: () => printUpdate(),
                text: tr('edit_profile'),
                shape: GFButtonShape.standard,
                color: Colors.amber,
                icon: const Icon(Icons.edit, color: Colors.white),
              );
            } else {
              if (followersContainCurrentUser(snapshot.data!)) {
                return _buildUnfollowButton(
                    context, getFollowByUserId(snapshot.data!)!);
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
          context
              .read<RetrieveFollowByUserIdCubit>()
              .loadFollowByUserId(widget.user.id);
          context
              .read<RetrieveContentCubit>()
              .loadPublicationByUserId(widget.user.id);
        }
        if (state.status is FormSubmissionFailed) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: const Text('follow_failed').tr(),
            backgroundColor: Theme.of(context).errorColor,
          ));
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
                      .add(FollowUserEvent.submit(widget.user.id));
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

  _buildUnfollowButton(BuildContext context, Follow follow) {
    return BlocConsumer<UnfollowUserBloc, UnfollowUserState>(
      listener: (context, state) {
        if (state.status is FormSubmissionSuccessful) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: const Text('unfollow_success').tr(),
            backgroundColor: Colors.green,
          ));
          context
              .read<RetrieveFollowByUserIdCubit>()
              .loadFollowByUserId(widget.user.id);
          context
              .read<RetrieveContentCubit>()
              .loadPublicationByUserId(widget.user.id);
        }
        if (state.status is FormSubmissionFailed) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: const Text('unfollow_failed').tr(),
            backgroundColor: Theme.of(context).errorColor,
          ));
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
                      .add(UnfollowUserEvent.submit(widget.user.id));
                }
              },
              text: follow.followStatus == Status.accepted
                  ? tr('unfollow')
                  : tr('request_sent'),
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
            if (widget.user.confidentiality == Confidentiality.public ||
                (followersContainCurrentUser(snapshot.data!) &&
                    getFollowByUserId(snapshot.data!)!.followStatus !=
                        Status.pendingInvit) ||
                widget.user.id == snapshot.data) {
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
                          .loadPublicationByUserId(widget.user.id);
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

  Future<void> printUpdate() async {
    await Alert(
      context: context,
      title: 'update_informations'.tr(),
      content: BlocProvider(
        create: (context) =>
            sl<UpdateUserBloc>()..add(UpdateUserEvent.loaded(widget.user)),
        child: UpdateUserModal(user: widget.user),
      ),
      buttons: [],
    ).show();
    context.read<RetrieveUserByIdCubit>().loadUserById(widget.user.id);
  }

  _loadFollowings(followings) {
    this.followings = followings;
    return Text(followings.length.toString() + 'following'.tr(),
        style: const TextStyle(fontSize: 16));
  }

  bool followersContainCurrentUser(String userId) {
    for (var follower in widget.followers) {
      if (follower.follower.id == userId) return true;
    }
    return false;
  }

  Follow? getFollowByUserId(String userId) {
    for (var follower in widget.followers) {
      if (follower.follower.id == userId) return follower;
    }
    return null;
  }
}
