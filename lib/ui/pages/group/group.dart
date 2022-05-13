import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../state/retrieve_group_by_id/retrieve_group_by_id_cubit.dart';
import '../../widgets/app-bar/app_bar_menu.dart';
import '../../widgets/loading.dart';

class GroupPage extends StatefulWidget {
  const GroupPage({
    Key? key,
    required this.groupId,
    required this.isCreatorOrAdmin,
  }) : super(key: key);

  final String groupId;
  final bool isCreatorOrAdmin;

  @override
  State<GroupPage> createState() => _GroupPageState();
}

class _GroupPageState extends State<GroupPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void didUpdateWidget(covariant GroupPage oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.groupId != widget.groupId) {
      context.read<RetrieveGroupByIdCubit>().loadGroup(widget.groupId);
      // context
      //     .read<RetrieveFollowByFollowerIdCubit>()
      //     .loadFollowByFollowerId(widget.groupId);
      // context
      //     .read<RetrieveFollowByUserIdCubit>()
      //     .loadFollowByUserId(widget.groupId);
      // context
      //     .read<RetrieveContentCubit>()
      //     .loadPublicationByUserId(widget.groupId);
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
          child: BlocConsumer<RetrieveGroupByIdCubit, RetrieveGroupByIdState>(
              listener: (context, state) {
            state.maybeWhen(
              orElse: () {},
              failure: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: const Text('Failed_to_load_group').tr(),
                  backgroundColor: Theme.of(context).errorColor,
                ));
              },
            );
          }, builder: (context, state) {
            return state.maybeWhen(
                initial: () {
                  context
                      .read<RetrieveGroupByIdCubit>()
                      .loadGroup(widget.groupId);
                  return const Loading();
                },
                orElse: () => const Loading(),
                loaded: (user) => Text(widget.isCreatorOrAdmin.toString()));
                    // MultiBlocProvider(
                    //   providers: [
                    //     BlocProvider(
                    //       create: (context) => sl<FollowUserBloc>(),
                    //     ),
                    //     BlocProvider(
                    //       create: (context) => sl<UnfollowUserBloc>(),
                    //     ),
                    //   ],
                    //   child: GroupLoaded(
                    //     user: user,
                    //     context: context,
                    //   ),
                    // ));
          }),
        ),
      ),
    );
  }
}
