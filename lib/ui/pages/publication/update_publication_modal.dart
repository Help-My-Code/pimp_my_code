import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../../../../core/form_status.dart';
import '../../../../state/update_content/update_content_bloc.dart';
import '../../validator/validators.dart';

class UpdatePublicationModal extends StatelessWidget {
  UpdatePublicationModal({
    Key? key,
    required this.contentId,
    this.title,
    required this.content,
    required this.reloadFunction,
  }) : super(key: key);

  final String contentId;
  final String? title;
  final String content;
  final VoidCallback reloadFunction;
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
          child: BlocBuilder<UpdateContentBloc, UpdateContentState>(
            builder: (context, state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  _buildTitle(context, width),
                  _buildContent(context, width),
                  _buildUpdate(context),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildTitle(BuildContext context, double width) {
    return SizedBox(
      width: width,
      child: TextFormField(
        initialValue: title,
        onChanged: (value) => context
            .read<UpdateContentBloc>()
            .add(UpdateContentEvent.updateTitle(value)),
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          labelText: tr('title_hint'),
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context, double width) {
    return SizedBox(
      width: width,
      child: TextFormField(
        maxLines: 5,
        validator: requiredValidator,
        initialValue: content,
        onChanged: (value) => context
            .read<UpdateContentBloc>()
            .add(UpdateContentEvent.updateContent(value)),
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          labelText: tr('content_hint') + '*',
        ),
      ),
    );
  }

  Widget _buildUpdate(BuildContext context) {
    return BlocConsumer<UpdateContentBloc, UpdateContentState>(
      listener: (context, state) {
        if (state.status is FormSubmissionSuccessful) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: const Text('content_updated').tr(),
            backgroundColor: Colors.green,
          ));
        }
        if (state.status is FormSubmissionFailed) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: const Text('content_updated_failed').tr(),
            backgroundColor: Theme.of(context).errorColor,
          ));
        }
      },
      builder: (context, state) {
        return DialogButton(
          child: Text(
            'save'.tr(),
            style: const TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () async {
            if (_formKey.currentState != null &&
                _formKey.currentState!.validate() &&
                state.status is FormNotSent) {
              context
                  .read<UpdateContentBloc>()
                  .add(UpdateContentEvent.submit(contentId, reloadFunction));
              Navigator.pop(context);
            }
          },
          width: 120,
        );
      },
    );
  }
}
