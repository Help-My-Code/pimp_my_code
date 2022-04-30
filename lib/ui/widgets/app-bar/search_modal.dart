import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:getwidget/getwidget.dart';

import '../../../state/retrieve_user/retrieve_user_cubit.dart';
import '../loading.dart';

class SearchModal extends StatelessWidget {
  const SearchModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        TextField(
            onChanged: (text) {
              print(text);
              //TODO recherche utilisateur et groupes
            },
            decoration: InputDecoration(
              hintText: 'search_user_group'.tr(),
              prefixIcon: const Icon(Icons.search),
            )),
        const SizedBox(height: 20),
        BlocConsumer<RetrieveUserCubit, RetrieveUserState>(
          listener: (context, state) {
            state.maybeWhen(
              orElse: () {},
              failure: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: const Text('Failed_to_load_user').tr(),
                  ),
                );
              },
            );
          },
          builder: (context, state) {
            return state.maybeWhen(
              initial: () {
                context.read<RetrieveUserCubit>().loadUser();
                return const Loading();
              },
              orElse: () => const Loading(),
            );
          },
        ),
        //TODO
        //if(users.isNotEmpty)
        const Text('users').tr(),
        const SizedBox(height: 10),
        Row(
          children: const <Widget>[
            GFAvatar(
              size: 20,
              backgroundImage: NetworkImage(
                'https://upload.wikimedia.org/wikipedia/commons/9/9a/Gull_portrait_ca_usa.jpg',
              ),
            ),
            SizedBox(width: 10),
            Text('Hubert Delarue', style: TextStyle(fontSize: 16)),
          ],
        ),
        const SizedBox(height: 10),
        //if(groups.isNotEmpty)
        const Text('groups').tr(),
        const SizedBox(height: 10),
        Row(
          children: const <Widget>[
            GFAvatar(
              size: 20,
              backgroundImage: NetworkImage(
                'https://upload.wikimedia.org/wikipedia/commons/9/9a/Gull_portrait_ca_usa.jpg',
              ),
            ),
            SizedBox(width: 10),
            Text('Entraide node', style: TextStyle(fontSize: 16)),
          ],
        ),
      ],
    );
  }
}
