import 'package:flutter/material.dart';

import '../../../core/utils/colors.dart';
import '../../../core/utils/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton({
    this.radius = 4,
    this.width = 335,
    this.height = 44,
    this.fontSize = 14,
    required this.text,
    this.borderWidth = 1,
    this.isLoading = false,
    required this.onPressed,
    this.textColor = AppColors.white,
    this.fontWeight = FontWeight.w600,
    this.backgroundColor = AppColors.red,
    this.progressColor = AppColors.black,
    this.borderColor = Colors.transparent,
    super.key,
  });

  final String text;
  final double width;
  final double height;
  final double radius;
  final bool isLoading;
  final Color textColor;
  final double fontSize;
  final Color borderColor;
  final double borderWidth;
  final Color progressColor;
  final FontWeight fontWeight;
  final Color backgroundColor;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width.w,
      height: height.h,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            side: BorderSide(color: borderColor, width: borderWidth),
            borderRadius: BorderRadius.circular(radius.r),
          ),
        ),
        child: isLoading
            ? Center(
                child: CircularProgressIndicator(color: progressColor),
              )
            : Text(
                text,
                style: AppTextStyles.h5SemiBold.copyWith(
                  color: textColor,
                  fontSize: fontSize.sp,
                  fontWeight: fontWeight,
                ),
              ),
      ),
    );
  }
}
