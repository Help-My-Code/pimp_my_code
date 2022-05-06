import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

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
            child: Text(
              label,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ))
      ],
    );
  }
}