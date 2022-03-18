import 'package:FitnestX/src/uikit/style/colors.dart';
import 'package:flutter/material.dart';

class CheckboxInput extends StatefulWidget {
  final Widget child;

  const CheckboxInput({Key? key, required this.child}) : super(key: key);

  @override
  State<CheckboxInput> createState() => _CheckboxState();
}

class _CheckboxState extends State<CheckboxInput> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 0,
          child: Checkbox(
            checkColor: Colors.white,
            activeColor: ThemeColors.grayColors.normal,
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1),
              borderRadius: BorderRadius.circular(5),
            ),
            value: _isChecked,
            onChanged: (bool? value) {
              setState(() {
                _isChecked = value!;
              });
            },
          ),
        ),
        Expanded(child: widget.child)
      ],
    );
  }
}
