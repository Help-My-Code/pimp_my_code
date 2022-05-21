import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../../../../domain/entities/group.dart';
import '../../../../state/delete_group/delete_group_cubit.dart';

class DeleteGroupModal extends StatelessWidget {
  DeleteGroupModal({Key? key, required this.group}) : super(key: key);

  final Group group;
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
          child: BlocConsumer<DeleteGroupCubit, DeleteGroupState>(
            listener: (context, state) {
              state.maybeWhen(
                orElse: () {},
                success: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: const Text('delete_group_success').tr(),
                    backgroundColor: Colors.green,
                  ));
                },
                failure: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: const Text('failed_to_delete_group').tr(),
                    backgroundColor: Theme.of(context).errorColor,
                  ));
                },
              );
            },
            builder: (context, state) {
              return DialogButton(
                child: Text(
                  'delete_group'.tr(),
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                ),
                onPressed: () {
                  context.read<DeleteGroupCubit>().deleteGroup(group.id);
                  Navigator.pop(context);
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
