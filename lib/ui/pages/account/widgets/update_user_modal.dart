import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pw_validator/flutter_pw_validator.dart';
import 'package:getwidget/components/toggle/gf_toggle.dart';
import 'package:getwidget/types/gf_toggle_type.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../../../validator/validators.dart';

class UpdateUserModal extends StatelessWidget {
  UpdateUserModal({Key? key}) : super(key: key);

  final _passwordController = TextEditingController();
  bool isValidPassword = false;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width * 0.6;
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.7,
      width: width,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              width: width,
              child: TextFormField(
                validator: requiredValidator,
                // onChanged: (value) => context
                //     .read<RegisterBloc>()
                //     .add(RegisterEvent.updateLastName(value)),
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'description'.tr(),
                  icon: const Icon(Icons.description),
                ),
                maxLength: 255,
              ),
            ),
            SizedBox(
              width: width,
              child: TextFormField(
                validator: requiredValidator,
                // onChanged: (value) => context
                //     .read<RegisterBloc>()
                //     .add(RegisterEvent.updateLastName(value)),
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'principal_picture_url'.tr(),
                  icon: const Icon(Icons.insert_link),
                ),
                maxLength: 255,
              ),
            ),
            //TODO voir le fonctionnement password sur register
            SizedBox(
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
                onChanged: (value) {},
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'password*'.tr(),
                  icon: const Icon(Icons.password),
                ),
                maxLength: 20,
              ),
            ),
            Padding(
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
            ),
            SizedBox(
              width: width,
              child: TextFormField(
                obscureText: true,
                // validator: (validator) =>
                //     requiredConfirmPasswordValidator(validator, password),
                onChanged: (value) => {},
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'password_confirmation*'.tr(),
                  icon: const Icon(Icons.password),
                ),
                maxLength: 20,
              ),
            ),
            Row(
              children: [
                const Text('private_account', style: TextStyle(fontSize: 14))
                    .tr(),
                const SizedBox(width: 10),
                GFToggle(
                  onChanged: (val) {},
                  value: false,
                  type: GFToggleType.ios,
                )
              ],
            ),
            const SizedBox(height: 10),
            DialogButton(
              child: Text(
                'save'.tr(),
                style: const TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () {
                //TODO save
              },
              width: 120,
            )
            // BlocConsumer<RetrieveUpdateUserCubit, RetrieveUpdateUserState>(
            //     listener: (context, state) {
            //   state.maybeWhen(
            //     orElse: () {},
            //     failure: () {
            //       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            //         content: const Text('Failed_to_load_notifications').tr(),
            //         backgroundColor: Theme.of(context).errorColor,
            //       ));
            //     },
            //   );
            // }, builder: (context, state) {
            //   return state.maybeWhen(
            //     initial: () {
            //       context.read<RetrieveUpdateUserCubit>().loadUpdateUser();
            //       return const Loading();
            //     },
            //     orElse: () => const Loading(),
            //     loaded: (notifications) => UpdateUserLoaded(notifications: notifications),
            //   );
            // }),
          ],
        ),
      ),
    );
  }
}
