import 'package:clipboard/clipboard.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:pimp_my_code/config/env/base.dart';

import '../../../../ioc_container.dart';

class ShareModal extends StatelessWidget {
  final String _contentId;
  const ShareModal(this._contentId, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late final String url;
    if (kIsWeb) {
      url = '${Uri.base.host}:${Uri.base.port}/#/publication/$_contentId';
    } else {
      url = sl<Config>().browserUrl + '/publication/' + _contentId;
    }

    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      width: MediaQuery.of(context).size.width * 0.8,
      child: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(initialValue: url, readOnly: true),
            ),
          ),
          ElevatedButton.icon(
            onPressed: () async {
              await FlutterClipboard.copy(url);
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text('url copied'.tr()),
                backgroundColor: Colors.green,
              ));
            },
            icon: const Icon(Icons.copy),
            label: const Text('copy').tr(),
          )
        ],
      ),
    );
  }
}
