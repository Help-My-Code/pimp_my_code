import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:getwidget/getwidget.dart';
import 'package:pimp_my_code/domain/usecases/program/execute_program_use_case.dart';
import '../../../../state/post/create_post_cubit.dart';
import 'create_post_card_radio.dart';
import '../../../widgets/code_editor/code_editor.dart';
import '../../../widgets/code_editor/code_showroom.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import 'package:timeago/timeago.dart' as timeago;

import '../../../../domain/usecases/content/create_publication_use_case.dart';
import '../../../../ioc_container.dart';

class CreatePostCard extends StatelessWidget {
  final String? contentId;
  final String? groupId;

  const CreatePostCard({Key? key, this.contentId, this.groupId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (ctx) =>
          sl<CreatePostCubit>()..makeAttributes(contentId, groupId),
      child: Builder(builder: (context) {
        return BlocConsumer<CreatePostCubit, CreatePostState>(
            listener: (context, state) {
          state.failureOrSuccessOption?.fold(
            (failure) {
              late final String message;
              if (failure is ExecuteProgramFailure) {
                message = failure.message;
              } else if (failure is CreatePublicationFailure) {
                message = failure.message;
              } else {
                message = 'error';
              }
              return Alert(
                context: context,
                title: 'notifications'.tr(),
                content: Text(message),
                buttons: [],
              ).show();
            },
            (_) {},
          );
        }, builder: (context, state) {
          return SingleChildScrollView(
            child: GFCard(
              padding: const EdgeInsets.only(
                bottom: 50,
                left: 20,
                right: 20,
                top: 20,
              ),
              boxFit: BoxFit.cover,
              title: GFListTile(
                avatar: CircleAvatar(
                  child: Image.network(state.userPicture!),
                ),
                title: Text(
                  state.username!,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                subTitle: Text(timeago.format(state.createdAt!)),
              ),
              content: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    onChanged: context.read<CreatePostCubit>().onTitleChange,
                    decoration: InputDecoration(hintText: tr('title_hint')),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: TextFormField(
                          maxLines: 1,
                          onChanged:
                              context.read<CreatePostCubit>().onContentChange,
                          decoration:
                              InputDecoration(hintText: tr('media_hint')),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Flexible(
                          child: TextFormField(
                        maxLines: 1,
                        onChanged:
                            context.read<CreatePostCubit>().onContentChange,
                        decoration: InputDecoration(hintText: tr('media_hint')),
                      )),
                      const SizedBox(
                        width: 20,
                      ),
                      Flexible(
                          child: TextFormField(
                        maxLines: 1,
                        onChanged:
                            context.read<CreatePostCubit>().onContentChange,
                        decoration: InputDecoration(hintText: tr('media_hint')),
                      )),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    maxLines: 5,
                    onChanged: context.read<CreatePostCubit>().onContentChange,
                    decoration:
                        InputDecoration(hintText: tr('content_hint') + '*'),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CreatePostCardRadio(
                          label: 'Python',
                          value: 'PYTHON',
                          groupValue: state.language,
                          onChanged: (value) {
                            context
                                .read<CreatePostCubit>()
                                .onLanguageChange(value);
                          }),
                      const SizedBox(
                        height: 10,
                      ),
                      CreatePostCardRadio(
                          label: 'Dart',
                          value: 'DART',
                          groupValue: state.language,
                          onChanged: (value) {
                            context
                                .read<CreatePostCubit>()
                                .onLanguageChange(value);
                          }),
                      const SizedBox(
                        height: 10,
                      ),
                      CreatePostCardRadio(
                          label: 'C',
                          value: 'C',
                          groupValue: state.language,
                          onChanged: (value) {
                            context
                                .read<CreatePostCubit>()
                                .onLanguageChange(value);
                          }),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Align(child: CodeEditor(onCodeChange: (code) {
                    if (code != null) {
                      context.read<CreatePostCubit>().onCodeChange(code);
                    }
                  })),
                  if (state.isCompiling)
                    Align(
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            const CircularProgressIndicator(),
                            const SizedBox(height: 10),
                            Text(tr('code_compiling'))
                          ],
                        ),
                      ),
                    ),
                  if (state.codeResult != null && state.codeResult!.isNotEmpty)
                    Align(
                        child: CodeShowRoom(
                      data: state.codeResult!,
                      language: state.language.toLowerCase(),
                    )),
                ],
              ),
              buttonBar: GFButtonBar(
                children: <Widget>[
                  GFButton(
                    textColor: Colors.white,
                    onPressed: context.read<CreatePostCubit>().onCancel,
                    color: GFColors.DANGER,
                    text: tr('cancel'),
                    shape: GFButtonShape.pills,
                  ),
                  GFButton(
                    textColor: Colors.white,
                    onPressed: !context
                            .read<CreatePostCubit>()
                            .isValidForCompilation
                        ? null
                        : context.read<CreatePostCubit>().onSubmitCompilation,
                    color: GFColors.DARK,
                    text: tr('compile'),
                    shape: GFButtonShape.pills,
                  ),
                  GFButton(
                    textColor: Colors.white,
                    onPressed: !context.read<CreatePostCubit>().isValid
                        ? null
                        : () => context
                            .read<CreatePostCubit>()
                            .onSubmitPost(context),
                    text: tr('submit'),
                    shape: GFButtonShape.pills,
                  ),
                ],
              ),
            ),
          );
        });
      }),
    );
  }
}
