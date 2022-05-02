import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:getwidget/components/card/gf_card.dart';
import 'package:getwidget/components/carousel/gf_items_carousel.dart';
import 'package:getwidget/components/list_tile/gf_list_tile.dart';
import 'package:getwidget/getwidget.dart';
import 'package:pimp_my_code/state/post/create_post_cubit.dart';
import 'package:pimp_my_code/ui/widgets/code_editor/code_editor.dart';

import '../../../widgets/code_editor/code_showroom.dart';
import '../../../widgets/image_full_screen_wrapper/image_full_screen_wrapper.dart';
import 'package:timeago/timeago.dart' as timeago;

class CreatePostCard extends StatelessWidget {
  const CreatePostCard({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreatePostCubit, CreatePostState>(
        builder: (context, state) {
      return GFCard(
        padding: const EdgeInsets.only(bottom: 50, left: 20, right: 20, top: 20),
        boxFit: BoxFit.cover,
        title: GFListTile(
          avatar: GFAvatar(
            backgroundImage: NetworkImage(state.userPicture ?? ''),
          ),
          title: const Text(
            'username',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subTitle: Text(timeago.format(state.createdAt!)),
        ),
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
                child: SizedBox(
                    width: 500,
                    child: TextFormField(
                      onChanged: context.read<CreatePostCubit>().onTitleChange,
                      decoration: InputDecoration(hintText: tr('title_hint')),
                    ))),
              const SizedBox(
                height: 20,
              ),
            Align(
                child: SizedBox(
                    width: 250,
                    child: TextFormField(
                      maxLines: 1,
                      onChanged:
                      context.read<CreatePostCubit>().onContentChange,
                      decoration: InputDecoration(hintText: tr('media_hint')),
                    ))),
            Align(
                child: SizedBox(
                    width: 250,
                    child: TextFormField(
                      maxLines: 1,
                      onChanged:
                      context.read<CreatePostCubit>().onContentChange,
                      decoration: InputDecoration(hintText: tr('media_hint')),
                    ))),
            Align(
                child: SizedBox(
                    width: 250,
                    child: TextFormField(
                      maxLines: 1,
                      onChanged:
                      context.read<CreatePostCubit>().onContentChange,
                      decoration: InputDecoration(hintText: tr('media_hint')),
                    ))),
            const SizedBox(
              height: 20,
            ),

            Align(
                child: SizedBox(
                    width: 500,
                    child: TextFormField(
                      maxLines: 5,
                      onChanged:
                          context.read<CreatePostCubit>().onContentChange,
                      decoration: InputDecoration(hintText: tr('content_hint')),
                    ))),
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
                      context.read<CreatePostCubit>().onLanguageChange(value);
                    }),
                const SizedBox(
                  height: 10,
                ),
                CreatePostCardRadio(
                    label: 'Javascript',
                    value: 'JAVASCRIPT',
                    groupValue: state.language,
                    onChanged: (value) {
                      context.read<CreatePostCubit>().onLanguageChange(value);
                    }),
                const SizedBox(
                  height: 10,
                ),
                CreatePostCardRadio(
                    label: 'C',
                    value: 'C',
                    groupValue: state.language,
                    onChanged: (value) {
                      context.read<CreatePostCubit>().onLanguageChange(value);
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
              onPressed: !context.read<CreatePostCubit>().isValidForCompilation ? null : context.read<CreatePostCubit>().onSubmitCompilation,
              color: GFColors.DARK,
              text: tr('compile'),
              shape: GFButtonShape.pills,
            ),
            GFButton(
              textColor: Colors.white,
              onPressed: !context.read<CreatePostCubit>().isValid ? null : () =>
                  context.read<CreatePostCubit>().onSubmitPost('user_id', context),
              text: tr('submit'),
              shape: GFButtonShape.pills,
            ),
          ],
        ),
      );
    });
  }
}

class CreatePostCardRadio extends StatelessWidget {
  const CreatePostCardRadio(
      {Key? key,
      required this.label,
      required this.value,
      required this.groupValue,
      required this.onChanged})
      : super(key: key);

  final String label, value, groupValue;
  final Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GFRadio(
          type: GFRadioType.blunt,
          size: GFSize.MEDIUM,
          value: value,
          groupValue: groupValue,
          onChanged: onChanged,
          inactiveIcon: null,
          activeBorderColor: GFColors.SUCCESS,
          customBgColor: GFColors.SUCCESS,
        ),
        const SizedBox(
          width: 10,
        ),
        SizedBox(
            width: 100,
            child: Text(label, style: const TextStyle(fontWeight: FontWeight.bold),))
      ],
    );
  }
}
