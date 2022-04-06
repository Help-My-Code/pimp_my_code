import 'package:easy_localization/easy_localization.dart';
import 'package:form_field_validator/form_field_validator.dart';

final emailValidator = MultiValidator([
  RequiredValidator(errorText: 'required_email'.tr()),
  EmailValidator(errorText: 'valid_email'.tr())
]);

final requiredValidator = RequiredValidator(errorText: 'required_field'.tr());

String? requiredConfirmPasswordValidator(String? validator, String? password) {
  if (validator!.isEmpty) {
    return 'required_password_confirmation'.tr();
  }
  if (validator != password) {
    return 'password_dont_match'.tr();
  }
  return null;
}
