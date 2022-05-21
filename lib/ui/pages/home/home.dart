import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/shape/gf_button_shape.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'widgets/create_post_card.dart';
import 'widgets/home_loaded.dart';

import '../../../state/retrieve_content/retrieve_content_cubit.dart';
import '../../widgets/app-bar/app_bar_menu.dart';
import '../../widgets/loading.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBarMenu(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Align(
              child: GFButton(
                onPressed: () {
                  showMaterialModalBottomSheet(
                    context: context,
                    builder: (context) => const CreatePostCard(),
                  );
                },
                text: tr('add_post'),
                // icon: Icon(Icons.add),
                shape: GFButtonShape.standard,
                color: Colors.amber,
                icon: const Icon(Icons.add, color: Colors.white),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: BlocConsumer<RetrieveContentCubit, RetrieveContentState>(
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
                      context.read<RetrieveContentCubit>().loadPublication();
                      return const Loading();
                    },
                    orElse: () => const Loading(),
                    loaded: (publications) =>
                        HomeLoaded(publications: publications),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
