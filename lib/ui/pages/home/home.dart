import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../state/retrieve_content/retrieve_content_cubit.dart';
import '../../widgets/loading.dart';
import 'widgets/home_loaded.dart';
import '../../widgets/app-bar/app_bar_menu.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBarMenu(),
      body: BlocConsumer<RetrieveContentCubit, RetrieveContentState>(
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
              context.read<RetrieveContentCubit>().loadPublication();
              return const Loading();
            },
            orElse: () => const Loading(),
            loaded: (publications) => const HomeLoaded(),
          );
        },
      ),
    );
  }
}
