import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/colors.dart';

class AppTextButtonWithRow extends StatelessWidget {
  const AppTextButtonWithRow({
    super.key,
    this.height = 40,
    this.width = 311,
    this.isLoading = false,
    required this.onPressed,
    required this.children,
    this.progressColor,
    this.borderColor = Colors.transparent,
    this.backgroundColor = AppColors.red,
  });

  final double width;
  final double height;
  final bool isLoading;
  final List<Widget> children;
  final Color? progressColor;
  final VoidCallback? onPressed;
  final Color backgroundColor, borderColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width.w,
      height: height.h,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          disabledBackgroundColor: AppColors.grey,
          side: BorderSide(color: borderColor),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.r),
          ),
        ),
        child: isLoading
            ? CircularProgressIndicator(color: progressColor)
            : Row(
                spacing: 10.w,
                mainAxisAlignment: MainAxisAlignment.center,
                children: children,
              ),
      ),
    );
  }
}
