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

class CreatePostCard extends StatefulWidget {
  const CreatePostCard({Key? key}) : super(key: key);

  @override
  State<CreatePostCard> createState() => _CreatePostCardState();
}

class _CreatePostCardState extends State<CreatePostCard> {
  String groupValue = 'PYTHON';

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreatePostCubit, CreatePostState>(
        builder: (context, state) {
          return GFCard(
            padding: EdgeInsets.only(bottom: 50, left: 20, right: 20, top: 20),
            boxFit: BoxFit.cover,
            title: GFListTile(
              avatar: GFAvatar(
                backgroundImage: NetworkImage(state.userPicture ?? ''),
              ),
              title: Text(
                state.username ?? '',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subTitle: Text(
                  state.createdAt!.millisecondsSinceEpoch.toString()),
            ),
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                    child: SizedBox(
                        width: 500,
                        child: TextFormField(
                          onChanged: context
                              .read<CreatePostCubit>()
                              .onTitleChange,
                          decoration: const InputDecoration(hintText: 'title'),
                        ))),
                if (state.title != null)
                  const SizedBox(
                    height: 20,
                  ),
                if (state.medias != null && state.medias!.isNotEmpty)
                  GFItemsCarousel(
                    rowCount: 3,
                    children: state.medias!.map(
                          (url) {
                        return Container(
                          margin: const EdgeInsets.all(5.0),
                          child: ClipRRect(
                            borderRadius:
                            const BorderRadius.all(Radius.circular(5.0)),
                            child: ImageFullScreenWrapper(
                              url: url,
                              dark: true,
                            ),
                          ),
                        );
                      },
                    ).toList(),
                  ),
                if (state.codeResult != null)
                // Padding(
                //   padding:
                //       const EdgeInsets.symmetric(vertical: 15, horizontal: 2.5),
                //   child: CodeShowRoom(
                //     data: state.code!,
                //     language: language,
                //   ),
                // ),
                // Padding(
                //   padding:
                //   const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                //   child: Text(
                //     post,
                //     textAlign: TextAlign.left,
                //   ),
                // ),

                  const SizedBox(
                    height: 20,
                  ),
                Align(
                    child: SizedBox(
                        width: 500,
                        child: TextFormField(
                          maxLines: 5,
                          onChanged:
                          context
                              .read<CreatePostCubit>()
                              .onContentChange,
                          decoration: const InputDecoration(
                              hintText: 'content'),
                        ))),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    CreatePostCardRadio()
                    GFRadio(
                      type: GFRadioType.blunt,
                      size: GFSize.MEDIUM,
                      value: 'JAVASCRIPT',
                      groupValue: groupValue,
                      onChanged: (String value) {
                        context.read<CreatePostCubit>().onLanguageChange(
                            'JAVASCRIPT');
                        setState(() {
                          groupValue = value;
                        });
                      },
                      inactiveIcon: null,
                      activeBorderColor: GFColors.SUCCESS,
                      customBgColor: GFColors.SUCCESS,
                    ),
                    GFRadio(
                      type: GFRadioType.blunt,
                      size: GFSize.MEDIUM,
                      value: 'C',
                      groupValue: groupValue,
                      onChanged: (String value) {
                        context.read<CreatePostCubit>().onLanguageChange('C');
                        setState(() {
                          groupValue = value;
                        });
                      },
                      inactiveIcon: null,
                      activeBorderColor: GFColors.SUCCESS,
                      customBgColor: GFColors.SUCCESS,
                    ),
                  ],
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
                  onPressed: context
                      .read<CreatePostCubit>()
                      .onCancel,
                  color: GFColors.DANGER,
                  text: tr('cancel'),
                  shape: GFButtonShape.pills,
                ),
                GFButton(
                  textColor: Colors.white,
                  onPressed: context
                      .read<CreatePostCubit>()
                      .onSubmitCompilation,
                  color: GFColors.DARK,
                  text: tr('compile'),
                  shape: GFButtonShape.pills,
                ),
                GFButton(
                  textColor: Colors.white,
                  onPressed: () =>
                      context.read<CreatePostCubit>().onSubmitPost('', context),
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
  const CreatePostCardRadio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GFRadio(
          type: GFRadioType.blunt,
          size: GFSize.MEDIUM,
          value: 'PYTHON',
          groupValue: groupValue,
          onChanged: (String value) {
            context.read<CreatePostCubit>().onLanguageChange('PYTHON');
            setState(() {
              groupValue = value;
            });
          },
          inactiveIcon: null,
          activeBorderColor: GFColors.SUCCESS,
          customBgColor: GFColors.SUCCESS,
        ),
        const SizedBox(width: 5,),
        const Text('PYTHON')
      ],
    );
  }
}
