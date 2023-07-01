import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final double mWidth;
  final Color mColor;
  final double mBorderRadius;
  final IconData? mIcon;
  final VoidCallback? onTap;
  const CustomButton({
    super.key,
    required this.title,
    this.mWidth = 300,
    this.mColor = Colors.blue,
    this.mBorderRadius = 21,
    this.mIcon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: mWidth,
      child: ElevatedButton(
        onPressed: onTap,
        child: mIcon == null
            ? Text(title)
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(mIcon),
                  SizedBox(
                    width: 11,
                  ),
                  Text(title),
                ],
              ),
        style: ElevatedButton.styleFrom(
          backgroundColor: mColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(mBorderRadius),
          ),
        ),
      ),
    );
  }
}
