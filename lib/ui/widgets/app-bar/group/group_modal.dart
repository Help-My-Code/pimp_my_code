import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../state/retrieve_my_groups/retrieve_my_groups_cubit.dart';
import '../../loading.dart';
import 'my_groups_loaded.dart';

class GroupModal extends StatelessWidget {
  const GroupModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.8,
      width: MediaQuery.of(context).size.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          BlocConsumer<RetrieveMyGroupsCubit, RetrieveMyGroupsState>(
              listener: (context, state) {
            state.maybeWhen(
              orElse: () {},
              failure: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: const Text('Failed_to_load_groups').tr(),
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
          /*BlocConsumer<RetrieveGroupCubit, RetrieveGroupState>(
              listener: (context, state) {
                state.maybeWhen(
                  orElse: () {},
                  failure: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: const Text('Failed_to_load_groups').tr(),
                      backgroundColor: Theme.of(context).errorColor,
                    ));
                  },
                );
              }, builder: (context, state) {
            return state.maybeWhen(
              initial: () {
                return const SizedBox();
              },
              orElse: () => const Loading(),
              loaded: (groups) => GroupedGroupsLoaded(groups: groups),
            );
          }),*/
        ],
      ),
    );
  }
}
