import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:getwidget/getwidget.dart';
import 'package:pimp_my_code/state/retrieve_user/retrieve_user_cubit.dart';
import 'package:pimp_my_code/ui/widgets/app-bar/search/searched_groups_loaded.dart';
import 'package:pimp_my_code/ui/widgets/app-bar/search/searched_users_loaded.dart';

import '../../../../state/retrieve_group/retrieve_group_cubit.dart';
import '../../loading.dart';

class SearchModal extends StatelessWidget {
  const SearchModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.8,
      width: MediaQuery.of(context).size.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextField(
            onChanged: (text) {
              if(text != '') {
                context.read<RetrieveUserCubit>().loadUser(text);
                context.read<RetrieveGroupCubit>().loadGroup(text);
              }
            },
            decoration: InputDecoration(
              hintText: 'search_user_group'.tr(),
              prefixIcon: const Icon(Icons.search),
            ),
          ),
          BlocConsumer<RetrieveUserCubit, RetrieveUserState>(
              listener: (context, state) {
            state.maybeWhen(
              orElse: () {},
              failure: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: const Text('Failed_to_load_users').tr(),
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
              loaded: (users) => SearchedUsersLoaded(users: users),
            );
          }),
          const SizedBox(height: 10),
          BlocConsumer<RetrieveGroupCubit, RetrieveGroupState>(
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
              loaded: (groups) => SearchedGroupsLoaded(groups: groups),
            );
          }),
        ],
      ),
    );
  }
}
