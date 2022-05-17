import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pw_validator/flutter_pw_validator.dart';
import 'package:getwidget/components/toggle/gf_toggle.dart';
import 'package:getwidget/types/gf_toggle_type.dart';
import 'package:pimp_my_code/domain/entities/enum/confidentiality.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../../../../core/form_status.dart';
import '../../../../domain/entities/user.dart';
import '../../../../state/create_group/create_group_bloc.dart';
import '../../../../state/session/session_cubit.dart';
import '../../../../state/update_user/update_user_bloc.dart';
import '../../../validator/validators.dart';

class CreateGroupModal extends StatefulWidget {
  const CreateGroupModal({Key? key}) : super(key: key);

  @override
  State<CreateGroupModal> createState() => _CreateGroupModalState();
}

class _CreateGroupModalState extends State<CreateGroupModal> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width * 0.6;
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.5,
      width: width,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: BlocBuilder<CreateGroupBloc, CreateGroupState>(
            builder: (context, state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  _buildName(context, width),
                  const SizedBox(height: 10),
                  _buildCreate(context),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildName(BuildContext context, double width) {
    return SizedBox(
      width: width,
      child: TextFormField(
        validator: requiredValidator,
        onChanged: (value) => context
            .read<CreateGroupBloc>()
            .add(CreateGroupEvent.updateName(value)),
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          labelText: 'name'.tr(),
          icon: const Icon(Icons.edit),
        ),
        maxLength: 255,
      ),
    );
  }

  Widget _buildCreate(BuildContext context) {
    return FutureBuilder<String>(
        future: context.read<SessionCubit>().getUserId(),
        builder: (context, AsyncSnapshot<String> snapshot) {
          if (snapshot.hasData) {
            return BlocConsumer<CreateGroupBloc, CreateGroupState>(
              listener: (context, state) {
                if (state.status is FormSubmissionSuccessful) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: const Text('group_created').tr(),
                    backgroundColor: Colors.green,
                  ));
                  Navigator.pop(context);
                }
                if (state.status is FormSubmissionFailed) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: const Text('group_created_failed').tr(),
                    backgroundColor: Theme.of(context).errorColor,
                  ));
                  Navigator.pop(context);
                }
              },
              builder: (context, state) {
                return DialogButton(
                  child: Text(
                    'add_group'.tr(),
                    style: const TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onPressed: () {
                    if (_formKey.currentState != null &&
                        _formKey.currentState!.validate() &&
                        state.status is FormNotSent) {
                      context
                          .read<CreateGroupBloc>()
                          .add(CreateGroupEvent.submit(snapshot.data!));
                    }
                  },
                  width: 160,
                );
              },
            );
          } else {
            return const CircularProgressIndicator();
          }
        });
  }
}
