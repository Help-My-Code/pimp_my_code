import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class CodeEditor extends StatefulWidget {
  const CodeEditor({Key? key, required this.onCodeChange, this.initialCode})
      : super(key: key);
  final Function(String?) onCodeChange;
  final String? initialCode;

  @override
  State<CodeEditor> createState() => _CodeEditorState();
}

class _CodeEditorState extends State<CodeEditor> {
  late TextEditingController textController;
  String? code;

  @override
  void initState() {
    textController = TextEditingController();
    textController.text = widget.initialCode ?? '';
    super.initState();
  }

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DisableShortcut(
      child: Actions(
        actions: {InsertTabIntent: InsertTabAction()},
        child: Shortcuts(
          shortcuts: {
            LogicalKeySet(LogicalKeyboardKey.tab):
                InsertTabIntent(2, textController),
          },
          child: TextField(
            onChanged: (text) {
              setState(() {
                code = text;
              });
              widget.onCodeChange(text);
            },
            enableInteractiveSelection: true,
            toolbarOptions: const ToolbarOptions(
              copy: true,
              cut: true,
              paste: true,
              selectAll: true,
            ),
            style: const TextStyle(fontWeight: FontWeight.bold),
            controller: textController,
            textInputAction: TextInputAction.newline,
            maxLines: 30,
            keyboardType: TextInputType.multiline,
          ),
        ),
      ),
    );
  }
}

class InsertTabIntent extends Intent {
  const InsertTabIntent(this.numSpaces, this.textController);

  final int numSpaces;
  final TextEditingController textController;
}

class InsertTabAction extends Action {
  @override
  Object invoke(covariant Intent intent) {
    if (intent is InsertTabIntent) {
      final oldValue = intent.textController.value;
      final newComposing = TextRange.collapsed(oldValue.composing.start);
      final newSelection = TextSelection.collapsed(
        offset: oldValue.selection.start + intent.numSpaces,
      );
      final newText = StringBuffer(oldValue.selection.isValid
          ? oldValue.selection.textBefore(
              oldValue.text,
            )
          : oldValue.text);
      for (var i = 0; i < intent.numSpaces; i++) {
        newText.write(' ');
      }
      final isValid = oldValue.selection.isValid;
      if (isValid) {
        newText.write(oldValue.selection.textAfter(
          oldValue.text,
        ));
      }

      intent.textController.value = intent.textController.value.copyWith(
        composing: newComposing,
        text: newText.toString(),
        selection: newSelection,
      );
    }
    return '';
  }
}

class InsertRevertIntent extends Intent {
  const InsertRevertIntent(this.numSpaces, this.textController);

  final int numSpaces;
  final TextEditingController textController;
}

class InsertRevertAction extends Action {
  @override
  Object invoke(covariant Intent intent) {
    if (intent is InsertRevertIntent) {
      intent.textController.value = intent.textController.value.copyWith(
        text: intent.textController.value.text,
      );
    }
    return '';
  }
}

///* for mac replace  LogicalKeyboardKey.control, with LogicalKeyboardKey.meta
final selectableKeySetwindows = LogicalKeySet(
  LogicalKeyboardKey.control,
  LogicalKeyboardKey.keyA,
);
final pasteKeySetwindows = LogicalKeySet(
  LogicalKeyboardKey.control,
  LogicalKeyboardKey.keyV,
);

/// i dont have any ios device 😅,let me know what it produce.
final selectableKeySetMac = LogicalKeySet(
  LogicalKeyboardKey.meta,
  LogicalKeyboardKey.keyA,
);

class DisableShortcut extends StatelessWidget {
  final Widget child;

  const DisableShortcut({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FocusableActionDetector(
      shortcuts: {
        selectableKeySetwindows: SelectionIntent(),
        pasteKeySetwindows: PasteIntent(),
      },
      actions: {
        SelectionIntent: CallbackAction(
          onInvoke: (intent) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text("Copy is forbidden")));
            return FocusScope.of(context).requestFocus(FocusNode());
          },
        ),
        PasteIntent: CallbackAction(
          onInvoke: (intent) async {
            // ClipboardData? data = await Clipboard.getData('text/plain');
            // print(" paste callBack ${data!.text}");
            return ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text("Paste is forbidden")));
          },
        )
      },
      autofocus: true,
      child: child,
    );
  }
}

class SelectionIntent extends Intent {}

class PasteIntent extends Intent {}
