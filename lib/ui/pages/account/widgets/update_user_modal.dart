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
import '../../../../state/update_user/update_user_bloc.dart';
import '../../../validator/validators.dart';

class UpdateUserModal extends StatelessWidget {
  UpdateUserModal({Key? key, required this.user}) : super(key: key);

  final User user;
  final _formKey = GlobalKey<FormState>();
  final _passwordController = TextEditingController();
  bool isValidPassword = false;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width * 0.6;
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.7,
      width: width,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: BlocBuilder<UpdateUserBloc, UpdateUserState>(
            builder: (context, state) {
              context.read<UpdateUserBloc>().add(UpdateUserEvent.init(
                  user.description,
                  user.principalPictureUrl,
                  user.confidentiality));
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  _buildDescription(context, width),
                  _buildProfilPictureURL(context, width),
                  _buildPassword(context, width),
                  _buildValidationBar(context),
                  _buildPasswordConfirmation(context, width, state.password),
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

  Widget _buildDescription(BuildContext context, double width) {
    return SizedBox(
      width: width,
      child: TextFormField(
        validator: requiredValidator,
        initialValue: user.description,
        onChanged: (value) => context
            .read<UpdateUserBloc>()
            .add(UpdateUserEvent.updateDescription(value)),
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
        initialValue: user.principalPictureUrl,
        onChanged: (value) => context
            .read<UpdateUserBloc>()
            .add(UpdateUserEvent.updateProfilePictureURL(value)),
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          labelText: 'principal_picture_url'.tr(),
          icon: const Icon(Icons.insert_link),
        ),
      ),
    );
  }

  SizedBox _buildPassword(BuildContext context, double width) {
    return SizedBox(
      width: width,
      child: TextFormField(
        controller: _passwordController,
        validator: (validator) {
          if (validator!.isEmpty) {
            return 'required_password'.tr();
          }
          if (!isValidPassword) {
            return 'conditions_password'.tr();
          }
          return null;
        },
        obscureText: true,
        onChanged: (value) => context
            .read<UpdateUserBloc>()
            .add(UpdateUserEvent.updatePassword(value)),
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          labelText: 'password*'.tr(),
          icon: const Icon(Icons.password),
        ),
        maxLength: 20,
      ),
    );
  }

  Widget _buildValidationBar(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.03),
      child: FlutterPwValidator(
        controller: _passwordController,
        minLength: 8,
        uppercaseCharCount: 1,
        numericCharCount: 1,
        specialCharCount: 1,
        normalCharCount: 1,
        width: 400,
        height: 150,
        // TODO les strings pour les traductions
        onSuccess: () {
          isValidPassword = true;
        },
        onFail: () {
          isValidPassword = false;
        },
      ),
    );
  }

  Widget _buildPasswordConfirmation(
      BuildContext context, double width, String? password) {
    return SizedBox(
      width: width,
      child: TextFormField(
        obscureText: true,
        validator: (validator) =>
            requiredConfirmPasswordValidator(validator, password),
        onChanged: (value) => context
            .read<UpdateUserBloc>()
            .add(UpdateUserEvent.updateConfirmPassword(value)),
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          labelText: 'password_confirmation*'.tr(),
          icon: const Icon(Icons.password),
        ),
        maxLength: 20,
      ),
    );
  }

  Widget _buildConfidentiality(BuildContext context, double width) {
    return Row(
      children: [
        const Text('private_account', style: TextStyle(fontSize: 14)).tr(),
        const SizedBox(width: 10),
        GFToggle(
          onChanged: (value) => context.read<UpdateUserBloc>().add(
              UpdateUserEvent.updateConfidentiality(
                  value! ? Confidentiality.private : Confidentiality.public)),
          value: user.confidentiality == Confidentiality.public ? false : true,
          type: GFToggleType.ios,
        )
      ],
    );
  }

  Widget _buildUpdate(BuildContext context) {
    return BlocConsumer<UpdateUserBloc, UpdateUserState>(
      listener: (context, state) {
        if (state.status is FormSubmissionSuccessful) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: const Text('user_updated').tr(),
            backgroundColor: Colors.green,
          ));
          Navigator.pop(context);
          //TODO recharger la page
        }
        if (state.status is FormSubmissionFailed) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: const Text('user_updated_failed').tr(),
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
                  .read<UpdateUserBloc>()
                  .add(const UpdateUserEvent.submit());
            }
          },
          width: 120,
        );
      },
    );
  }
}
