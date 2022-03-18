import 'package:FitnestX/src/uikit/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import 'TextInput.dart';

class PasswordInput extends StatefulWidget {
  final String? placeholder;
  final IconData? icon;

  const PasswordInput({Key? key, this.placeholder, this.icon})
      : super(key: key);

  @override
  State<PasswordInput> createState() => _State();
}

class _State extends State<PasswordInput> {
  bool _isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextInput(
      icon: widget.icon,
      placeholder: widget.placeholder,
      obscureText: _isObscureText,
      suffixIcon: InkWell(
        child: Icon(
          _isObscureText ? IconlyBroken.hide : IconlyLight.show,
          size: 18,
          color: ThemeColors.grayColors.normal,
        ),
        splashColor: Colors.transparent,
        overlayColor: null,
        hoverColor: Colors.transparent,
        focusColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () => setState(() {
          _isObscureText = !_isObscureText;
        }),
      ),
    );
  }
}
