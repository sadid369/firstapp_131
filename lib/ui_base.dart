import 'package:flutter/material.dart';

class UiBase {
  static InputDecoration getCustomDecoration(
      {double bRadious = 21,
      Color bColor = Colors.blue,
      required String hint,
      required String labelText,
      Color mFillColor = Colors.blue,
      bool isFilled = false,
      IconData? mPrefixIcon,
      IconData? mSuffixIcon,
      bool isPassword = false,
      bool isPasswordVisible = false,
      VoidCallback? onSuffixIconTap,
      k}) {
    return InputDecoration(
      hintText: hint,
      label: Text(labelText),
      fillColor: mFillColor,
      filled: isFilled,
      prefixIcon: mPrefixIcon != null ? Icon(mPrefixIcon) : null,
      suffixIcon: mSuffixIcon != null
          ? InkWell(
              onTap: onSuffixIconTap,
              child: Icon(isPassword ? Icons.visibility : mSuffixIcon))
          : null,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(bRadious),
        borderSide: BorderSide(
          color: bColor,
        ),
      ),
    );
  }
}
