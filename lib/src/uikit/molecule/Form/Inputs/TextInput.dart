import 'package:FitnestX/src/common/utils.dart';
import 'package:FitnestX/src/uikit/style/colors.dart';
import 'package:FitnestX/src/uikit/style/textTheme.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class TextInput extends StatelessWidget {
  final String? placeholder;
  final IconData? icon;
  final Widget? suffixIcon;

  final bool obscureText;

  final FormFieldValidator<String>? validator;

  const TextInput(
      {Key? key,
      this.placeholder,
      this.icon,
      this.validator,
      this.obscureText = false,
      this.suffixIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextFormField(
        obscureText: obscureText,
        style: TextStyle(
          fontSize: FontSize.small,
          color: ThemeColors.grayColors.normal,
        ),
        cursorColor: ThemeColors.grayColors.normal,
        decoration: InputDecoration(
          isDense: true,
          isCollapsed: true,
          filled: true,
          prefixIcon: icon != null
              ? Icon(
                  icon,
                  size: 18,
                  color: ThemeColors.grayColors.normal,
                )
              : null,
          suffixIcon: suffixIcon,
          hintText: placeholder,
          hintStyle: TextStyle(
            fontSize: FontSize.small,
            color: ThemeColors.grayColors.light,
          ),
          fillColor: ThemeColors.border,
          iconColor: ThemeColors.grayColors.normal,
          contentPadding: const EdgeInsets.all(15),
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(
              Radius.circular(14),
            ),
          ),
        ),
        validator: validator,
      ),
    );
  }
}
