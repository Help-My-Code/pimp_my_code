import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class SearchPopup extends StatefulWidget {
  const SearchPopup({Key? key}) : super(key: key);

  @override
  _SearchPopupState createState() => _SearchPopupState();
}

//TODO rendre cette classe fonctionnelle
class _SearchPopupState extends State<SearchPopup> {
  @override
  Widget build(BuildContext context) {
    return _onAlertButtonsPressed(context);
  }
}

_onAlertButtonsPressed(context) {

  List users = [];

  List groups = [];

  return Alert(
    context: context,
    title: 'search'.tr(),
    content: Column(
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
        //if(users.isNotEmpty)
        const Text('users').tr(),
        const SizedBox(height: 10),
        Row(
          children: const <Widget>[
            GFAvatar(
              size: 20,
              backgroundImage: NetworkImage(
                  'https://upload.wikimedia.org/wikipedia/commons/9/9a/Gull_portrait_ca_usa.jpg'),
            ),
            SizedBox(width: 10),
            Text('Hubert Delarue',
                style: TextStyle(fontSize: 16)),
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
                  'https://upload.wikimedia.org/wikipedia/commons/9/9a/Gull_portrait_ca_usa.jpg'),
            ),
            SizedBox(width: 10),
            Text('Entraide node',
                style: TextStyle(fontSize: 16)),
          ],
        ),
      ],
    ),
    buttons: [],
  ).show(); // here need to change
}
