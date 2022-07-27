import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../../../state/delete_content/delete_content_cubit.dart';
import '../../router/routes.dart';

class DeletePublicationModal extends StatelessWidget {
  DeletePublicationModal({Key? key, required this.contentId}) : super(key: key);

  final String contentId;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width * 0.4;
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      width: width,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: BlocConsumer<DeleteContentCubit, DeleteContentState>(
            listener: (context, state) {
              state.maybeWhen(
                orElse: () {},
                success: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: const Text('delete_content_success').tr(),
                    backgroundColor: Colors.green,
                  ));
                },
                failure: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: const Text('failed_to_delete_content').tr(),
                    backgroundColor: Theme.of(context).errorColor,
                  ));
                },
              );
            },
            builder: (context, state) {
              return DialogButton(
                child: Text(
                  'delete_content'.tr(),
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                ),
                onPressed: () {
                  context.read<DeleteContentCubit>().deleteContent(contentId);
                  Navigator.pop(context);
                  GoRouter.of(context).go(Routes.home.path);
                },
                color: Colors.deepOrange,
                width: 120,
              );
            },
          ),
        ),
      ),
    );
  }
}
