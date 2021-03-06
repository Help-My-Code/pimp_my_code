import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/shape/gf_button_shape.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:pimp_my_code/domain/entities/enum/status.dart';
import 'package:pimp_my_code/domain/entities/group_member.dart';
import 'package:pimp_my_code/ui/pages/group/widgets/delete_group_modal.dart';
import 'package:pimp_my_code/ui/pages/group/widgets/update_group_modal.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../../../../core/form_status.dart';
import '../../../../domain/entities/enum/confidentiality.dart';
import '../../../../domain/entities/group.dart';
import '../../../../ioc_container.dart';
import '../../../../state/delete_group/delete_group_cubit.dart';
import '../../../../state/join_group/join_group_bloc.dart';
import '../../../../state/like/like_cubit.dart';
import '../../../../state/quit_group/quit_group_bloc.dart';
import '../../../../state/retrieve_content/retrieve_content_cubit.dart';
import '../../../../state/retrieve_group_by_id/retrieve_group_by_id_cubit.dart';
import '../../../../state/retrieve_group_members_by_group_id/retrieve_group_members_by_user_id_cubit.dart';
import '../../../../state/session/session_cubit.dart';
import '../../../../state/update_group/update_group_bloc.dart';
import '../../../default_pictures.dart';
import '../../../router/routes.dart';
import '../../../widgets/loading.dart';
import '../../home/widgets/create_post_card.dart';
import '../../home/widgets/publications_loaded.dart';

class GroupLoaded extends StatefulWidget {
  const GroupLoaded(
      {Key? key,
      required this.group,
      required this.context,
      required this.groupMembers})
      : super(key: key);

  final Group group;
  final BuildContext context;
  final List<GroupMember> groupMembers;

  @override
  State<GroupLoaded> createState() => _GroupLoadedState();
}

class _GroupLoadedState extends State<GroupLoaded> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.03),
          child: Wrap(
            children: <Widget>[
              _buildAvatar(context),
              const SizedBox(width: 30),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      widget.group.name,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      widget.groupMembers.length.toString() + 'members'.tr(),
                      style: const TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      widget.group.description ?? '',
                      style: const TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
              SizedBox(width: MediaQuery.of(context).size.width * 0.09),
              _buildButtons(context),
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
        widget.group.principalPictureUrl ?? DefaultPictures.defaultGroupPicture,
      ),
    );
  }

  _buildButtons(BuildContext context) {
    return FutureBuilder<String>(
      future: context.read<SessionCubit>().getUserId(),
      builder: (context, AsyncSnapshot<String> snapshot) {
        if (snapshot.hasData) {
          if (widget.group.creator!.id == snapshot.data!) {
            return Column(
              children: [
                GFButton(
                  onPressed: () => printUpdate(),
                  text: tr('edit_group'),
                  shape: GFButtonShape.standard,
                  color: Colors.amber,
                  icon: const Icon(Icons.edit, color: Colors.white),
                ),
                GFButton(
                  onPressed: () => printDelete(),
                  text: tr('delete_group'),
                  shape: GFButtonShape.standard,
                  color: Colors.deepOrange,
                  icon: const Icon(Icons.remove, color: Colors.white),
                ),
              ],
            );
          } else {
            if (groupMembersContainCurrentUser(snapshot.data!)) {
              return _buildQuitButton(
                  context, getGroupMembersByUserId(snapshot.data!)!);
            }
            return _buildJoinButton(context);
          }
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }

  _buildJoinButton(BuildContext context) {
    return BlocConsumer<JoinGroupBloc, JoinGroupState>(
      listener: (context, state) {
        if (state.status is FormSubmissionSuccessful) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: const Text('join_group_success').tr(),
            backgroundColor: Colors.green,
          ));
          context
              .read<RetrieveGroupMembersByGroupIdCubit>()
              .loadGroupMemberByGroupId(widget.group.id);
          context
              .read<RetrieveContentCubit>()
              .loadPublicationByGroupId(widget.group.id);
        }
        if (state.status is FormSubmissionFailed) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: const Text('join_group_failed').tr(),
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
                    .read<JoinGroupBloc>()
                    .add(JoinGroupEvent.submit(widget.group.id));
              }
            },
            text: tr('join'),
            shape: GFButtonShape.standard,
            color: Colors.amber,
            icon: const Icon(Icons.add, color: Colors.white),
          ),
        );
      },
    );
  }

  _buildQuitButton(BuildContext context, GroupMember groupMember) {
    return BlocConsumer<QuitGroupBloc, QuitGroupState>(
      listener: (context, state) {
        if (state.status is FormSubmissionSuccessful) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: const Text('quit_group_success').tr(),
            backgroundColor: Colors.green,
          ));
          context
              .read<RetrieveGroupMembersByGroupIdCubit>()
              .loadGroupMemberByGroupId(widget.group.id);
          context
              .read<RetrieveContentCubit>()
              .loadPublicationByGroupId(widget.group.id);
        }
        if (state.status is FormSubmissionFailed) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: const Text('quit_group_failed').tr(),
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
                    .read<QuitGroupBloc>()
                    .add(QuitGroupEvent.submit(widget.group.id));
              }
            },
            text: groupMember.membershipStatus == Status.accepted
                ? tr('quit')
                : tr('request_sent'),
            shape: GFButtonShape.standard,
            color: Colors.amber,
            icon: const Icon(Icons.remove, color: Colors.white),
          ),
        );
      },
    );
  }

  _buildAddPublications(BuildContext context) {
    return GFButton(
      onPressed: () async {
        await showMaterialModalBottomSheet(
          context: context,
          builder: (context) => CreatePostCard(groupId: widget.group.id),
        );
        context
            .read<RetrieveContentCubit>()
            .loadPublicationByGroupId(widget.group.id);
      },
      text: tr('add_post'),
      shape: GFButtonShape.standard,
      color: Colors.amber,
      icon: const Icon(Icons.add, color: Colors.white),
    );
  }

  _buildPublications(BuildContext context) {
    return FutureBuilder<String>(
      future: context.read<SessionCubit>().getUserId(),
      builder: (context, AsyncSnapshot<String> snapshot) {
        if (snapshot.hasData) {
          if (widget.group.confidentiality == Confidentiality.public ||
              widget.group.creator!.id == snapshot.data! ||
              (groupMembersContainCurrentUser(snapshot.data!) &&
                  getGroupMembersByUserId(snapshot.data!)!.membershipStatus !=
                      Status.pendingInvit)) {
            return Column(
              children: [
                if (groupMembersContainCurrentUser(snapshot.data!) ||
                    widget.group.creator!.id == snapshot.data!)
                  _buildAddPublications(context),
                BlocConsumer<RetrieveContentCubit, RetrieveContentState>(
                  listener: (context, state) {
                    state.maybeWhen(
                      orElse: () {},
                      failure: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content:
                                const Text('failed_to_load_publications').tr(),
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
                            .loadPublicationByGroupId(widget.group.id);
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
                ),
              ],
            );
          } else {
            return Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.5,
              child: Text(
                'private_group'.tr(),
                style: const TextStyle(fontSize: 16),
              ),
            );
          }
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }

  Future<void> printUpdate() async {
    await Alert(
      context: context,
      title: 'update_informations'.tr(),
      content: BlocProvider(
        create: (context) =>
            sl<UpdateGroupBloc>()..add(UpdateGroupEvent.loaded(widget.group)),
        child: UpdateGroupModal(group: widget.group),
      ),
      buttons: [],
    ).show();
    context.read<RetrieveGroupByIdCubit>().loadGroup(widget.group.id);
  }

  Future<void> printDelete() async {
    await Alert(
      context: context,
      title: 'delete_group_confirmation'.tr(),
      content: BlocProvider(
        create: (context) => sl<DeleteGroupCubit>(),
        child: DeleteGroupModal(group: widget.group),
      ),
      buttons: [],
    ).show();
    GoRouter.of(context).go(Routes.home.path);
  }

  bool groupMembersContainCurrentUser(String userId) {
    for (var member in widget.groupMembers) {
      if (member.member!.id == userId) return true;
    }
    return false;
  }

  GroupMember? getGroupMembersByUserId(String userId) {
    for (var member in widget.groupMembers) {
      if (member.member!.id == userId) return member;
    }
    return null;
  }
}
