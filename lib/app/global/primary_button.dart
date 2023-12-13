import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../app.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final double? width;
  final Color? color;
  final Gradient? gradient;
  final bool useGradient;
  final Widget? icon;
  const PrimaryButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.width = double.infinity,
    this.color = ThemeColor.primaryColor,
    this.gradient = ThemeColor.gradient,
    this.useGradient = false,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: width,
      decoration: BoxDecoration(
        color: color,
        gradient: useGradient ? gradient : null,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(0),
          splashFactory: InkRipple.splashFactory,
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
          shadowColor: MaterialStateProperty.all(Colors.transparent),
        ),
        child: icon == null
            ? Text(
                text,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 15.sp,
                  color: ThemeColor.whiteColor,
                ),
                textAlign: TextAlign.center,
                maxLines: 1,
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  icon!,
                  const SizedBox(width: 2),
                  Flexible(
                    child: Text(
                      text,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16.sp,
                        color: ThemeColor.whiteColor,
                      ),
                      textAlign: TextAlign.center,
                       maxLines: 1,
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
