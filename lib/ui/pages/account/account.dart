import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pimp_my_code/state/follow_user/follow_user_bloc.dart';
import '../../../ioc_container.dart';
import '../../../state/retrieve_follow_by_follower_id/retrieve_follow_by_follower_id_cubit.dart';
import '../../../state/retrieve_follow_by_user_id/retrieve_follow_by_user_id_cubit.dart';
import '../../../state/unfollow_user/unfollow_user_bloc.dart';
import 'widgets/account_loaded.dart';

import '../../../state/retrieve_content_by_user_id/retrieve_content_by_user_id_cubit.dart';
import '../../../state/retrieve_user_by_id/retrieve_user_by_id_cubit.dart';
import '../../widgets/app-bar/app_bar_menu.dart';
import '../../widgets/loading.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({
    Key? key,
    required this.userId,
    required this.isUserConnected,
  }) : super(key: key);

  final String userId;
  final bool isUserConnected;

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void didUpdateWidget(covariant AccountPage oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.userId != widget.userId) {
      context.read<RetrieveUserByIdCubit>().loadUserById(widget.userId);
      context
          .read<RetrieveFollowByFollowerIdCubit>()
          .loadFollowByFollowerId(widget.userId);
      context
          .read<RetrieveFollowByUserIdCubit>()
          .loadFollowByUserId(widget.userId);
      context
          .read<RetrieveContentByUserIdCubit>()
          .loadPublication(widget.userId);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBarMenu(),
      body: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: BlocConsumer<RetrieveUserByIdCubit, RetrieveUserByIdState>(
              listener: (context, state) {
            state.maybeWhen(
              orElse: () {},
              failure: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: const Text('Failed_to_load_user').tr(),
                  backgroundColor: Theme.of(context).errorColor,
                ));
              },
            );
          }, builder: (context, state) {
            return state.maybeWhen(
                initial: () {
                  context
                      .read<RetrieveUserByIdCubit>()
                      .loadUserById(widget.userId);
                  return const Loading();
                },
                orElse: () => const Loading(),
                loaded: (user) => MultiBlocProvider(
                      providers: [
                        BlocProvider(
                          create: (context) => sl<FollowUserBloc>(),
                        ),
                        BlocProvider(
                          create: (context) => sl<UnfollowUserBloc>(),
                        ),
                      ],
                      child: AccountLoaded(
                        user: user,
                        isUserConnected: widget.isUserConnected,
                        context: context,
                      ),
                    ));
          }),
        ),
      ),
    );
  }
}
