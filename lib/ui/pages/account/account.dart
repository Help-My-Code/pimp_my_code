import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pimp_my_code/ui/pages/account/widgets/account_loaded.dart';

import '../../../state/retrieve_user_by_id/retrieve_user_by_id_cubit.dart';
import '../../../state/session/session_cubit.dart';
import '../../widgets/app-bar/app_bar_menu.dart';
import '../../widgets/loading.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key, this.userId}) : super(key: key);

  final String? userId;

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  Future<String>? _userId;

  @override
  void initState() {
    super.initState();
    _fetch();
  }

  @override
  void didUpdateWidget(covariant AccountPage oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.userId != widget.userId) _fetch();
  }

  Future<void> _fetch() => _userId = context.read<SessionCubit>().getUserId();

  @override
  Widget build(BuildContext context) => FutureBuilder<String>(
        future: _userId,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Loading();
          }
          if (snapshot.hasError) {
            return SnackBar(
              content: const Text('Failed_to_load_user').tr(),
              backgroundColor: Theme.of(context).errorColor,
            );
          }

          assert(snapshot.hasData);
          final userId = snapshot.data!;
          return Scaffold(
              appBar: const CustomAppBarMenu(),
              body: Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: double.infinity,
                child: SingleChildScrollView(
                  child: BlocConsumer<RetrieveUserByIdCubit,
                      RetrieveUserByIdState>(listener: (context, state) {
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
                              .loadUserById(userId);
                          return const Loading();
                        },
                        orElse: () => const Loading(),
                        loaded: (user) => AccountLoaded(user: user));
                  }),
                ),
              ));
        },
      );
}
