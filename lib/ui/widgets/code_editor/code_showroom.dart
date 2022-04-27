import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/github.dart';

class CodeShowRoom extends StatelessWidget {
  const CodeShowRoom({Key? key, required this.data, this.language = 'python'})
      : super(key: key);

  final String language, data;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(color: Color(0xFFFFFFFF)),
      child: HighlightView(
        // The original code to be highlighted
        data,

        // Specify language
        // It is recommended to give it a value for performance
        language: language,

        // Specify highlight theme
        // All available themes are listed in `themes` folder
        theme: githubTheme,

        // Specify padding
        padding: const EdgeInsets.all(12),

        // Specify text style
        textStyle: const TextStyle(
          fontFamily: 'arial',
          fontSize: 16,
        ),
      ),
    );
  }
}
