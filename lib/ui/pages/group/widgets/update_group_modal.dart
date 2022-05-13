import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:getwidget/components/toggle/gf_toggle.dart';
import 'package:getwidget/types/gf_toggle_type.dart';
import 'package:pimp_my_code/domain/entities/enum/confidentiality.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../../../../core/form_status.dart';
import '../../../../domain/entities/group.dart';
import '../../../../state/update_group/update_group_bloc.dart';
import '../../../validator/validators.dart';

class UpdateGroupModal extends StatelessWidget {
  UpdateGroupModal({Key? key, required this.group}) : super(key: key);

  final Group group;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width * 0.6;
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.7,
      width: width,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: BlocBuilder<UpdateGroupBloc, UpdateGroupState>(
            builder: (context, state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  _buildName(context, width),
                  _buildDescription(context, width),
                  _buildProfilPictureURL(context, width),
                  const SizedBox(height: 10),
                  _buildConfidentiality(context, width),
                  const SizedBox(height: 10),
                  _buildUpdate(context),
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
        initialValue: group.name,
        onChanged: (value) => context
            .read<UpdateGroupBloc>()
            .add(UpdateGroupEvent.updateName(value)),
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          labelText: 'name'.tr(),
          icon: const Icon(Icons.edit),
        ),
        maxLength: 255,
      ),
    );
  }

  Widget _buildDescription(BuildContext context, double width) {
    return SizedBox(
      width: width,
      child: TextFormField(
        validator: requiredValidator,
        initialValue: group.description,
        onChanged: (value) => context
            .read<UpdateGroupBloc>()
            .add(UpdateGroupEvent.updateDescription(value)),
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          labelText: 'description'.tr(),
          icon: const Icon(Icons.description),
        ),
        maxLength: 255,
      ),
    );
  }

  Widget _buildProfilPictureURL(BuildContext context, double width) {
    return SizedBox(
      width: width,
      child: TextFormField(
        validator: requiredValidator,
        initialValue: group.principalPictureUrl,
        onChanged: (value) => context
            .read<UpdateGroupBloc>()
            .add(UpdateGroupEvent.updateProfilePictureURL(value)),
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          labelText: 'principal_picture_url'.tr(),
          icon: const Icon(Icons.insert_link),
        ),
      ),
    );
  }

  Widget _buildConfidentiality(BuildContext context, double width) {
    return Row(
      children: [
        const Text('private_group', style: TextStyle(fontSize: 14)).tr(),
        const SizedBox(width: 10),
        GFToggle(
          onChanged: (value) => context.read<UpdateGroupBloc>().add(
              UpdateGroupEvent.updateConfidentiality(
                  value! ? Confidentiality.private : Confidentiality.public)),
          value: group.confidentiality == Confidentiality.public ? false : true,
          type: GFToggleType.ios,
        )
      ],
    );
  }

  Widget _buildUpdate(BuildContext context) {
    return BlocConsumer<UpdateGroupBloc, UpdateGroupState>(
      listener: (context, state) {
        if (state.status is FormSubmissionSuccessful) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: const Text('group_updated').tr(),
            backgroundColor: Colors.green,
          ));
          Navigator.pop(context);
          //TODO recharger la page
        }
        if (state.status is FormSubmissionFailed) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: const Text('group_updated_failed').tr(),
            backgroundColor: Theme.of(context).errorColor,
          ));
          Navigator.pop(context);
          //TODO recharger la page
        }
      },
      builder: (context, state) {
        return DialogButton(
          child: Text(
            'save'.tr(),
            style: const TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () {
            if (_formKey.currentState != null &&
                _formKey.currentState!.validate() &&
                state.status is FormNotSent) {
              context
                  .read<UpdateGroupBloc>()
                  .add(UpdateGroupEvent.submit(group.id));
            }
          },
          width: 120,
        );
      },
    );
  }
}
