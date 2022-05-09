import 'package:flutter/material.dart';

class CommentModal extends StatelessWidget {
  const CommentModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.8,
      width: MediaQuery.of(context).size.width * 0.8,
      child: ListView.builder(
        itemBuilder: ((context, index) {
          return ListTile(title: Text('Comment $index'));
        }),
        itemCount: 10,
      ),
    );
  }
}
