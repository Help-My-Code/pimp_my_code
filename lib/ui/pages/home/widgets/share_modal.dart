import 'package:clipboard/clipboard.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class ShareModal extends StatelessWidget {
  final String _contentId;
  const ShareModal(this._contentId, {Key? key}) : super(key: key);

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
              child: TextFormField(initialValue: _contentId, readOnly: true),
            ),
          ),
          ElevatedButton.icon(
            onPressed: () async {
              await FlutterClipboard.copy(_contentId);
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
