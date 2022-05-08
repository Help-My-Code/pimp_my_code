import 'package:clipboard/clipboard.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:pimp_my_code/domain/entities/content/content.dart';

class ShareModal extends StatelessWidget {
  final Content _content;
  const ShareModal(this._content, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      width: MediaQuery.of(context).size.width * 0.8,
      child: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(initialValue: _content.id, readOnly: true),
            ),
          ),
          ElevatedButton.icon(
            onPressed: () async {
              await FlutterClipboard.copy(_content.id!);
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
