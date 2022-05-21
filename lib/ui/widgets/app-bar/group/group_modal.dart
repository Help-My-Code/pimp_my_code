import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../state/retrieve_my_groups/retrieve_my_groups_cubit.dart';
import '../../../../state/retrive_group_members/retrieve_group_members_cubit.dart';
import '../../loading.dart';
import 'group_members_loaded.dart';
import 'my_groups_loaded.dart';

class GroupModal extends StatelessWidget {
  const GroupModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.7,
      width: MediaQuery.of(context).size.width * 0.6,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          BlocConsumer<RetrieveMyGroupsCubit, RetrieveMyGroupsState>(
              listener: (context, state) {
            state.maybeWhen(
              orElse: () {},
              failure: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: const Text('failed_to_load_groups').tr(),
                  backgroundColor: Theme.of(context).errorColor,
                ));
              },
            );
          }, builder: (context, state) {
            return state.maybeWhen(
              initial: () {
                context.read<RetrieveMyGroupsCubit>().loadMyGroups();
                return const Loading();
              },
              orElse: () => const Loading(),
              loaded: (groups) => MyGroupsLoaded(groups: groups),
            );
          }),
          const SizedBox(height: 10),
          BlocConsumer<RetrieveGroupMembersCubit, RetrieveGroupMembersState>(
              listener: (context, state) {
                state.maybeWhen(
                  orElse: () {},
                  failure: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: const Text('failed_to_load_group_members').tr(),
                      backgroundColor: Theme.of(context).errorColor,
                    ));
                  },
                );
              }, builder: (context, state) {
            return state.maybeWhen(
              initial: () {
                context.read<RetrieveGroupMembersCubit>().loadGroupMembers();
                return const Loading();
              },
              orElse: () => const Loading(),
              loaded: (groupMembers) => GroupMembersLoaded(groupMembers: groupMembers),
            );
          }),
        ],
      ),
    );
  }
}
