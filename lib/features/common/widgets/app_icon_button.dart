import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/utils/colors.dart';

class AppIconButton extends StatelessWidget {
  const AppIconButton({
    this.radius = 10,
    required this.icon,
    required this.onPressed,
    this.padding = EdgeInsets.zero,
    this.borderColor = Colors.transparent,
    this.backgroundColor = Colors.transparent,
    this.size = const Size(10, 10),
    this.foregroundColor = AppColors.white,
    super.key,
  });

  final String icon;
  final VoidCallback? onPressed;
  final Color backgroundColor;
  final Color foregroundColor;
  final Color borderColor;
  final Size size;
  final EdgeInsets padding;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      constraints: BoxConstraints.tight(
        size,
      ),
      style: IconButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius.r),
          side: BorderSide(color: borderColor),
        ),
        backgroundColor: backgroundColor,
        padding: padding,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      icon: SvgPicture.asset(
        icon,
        colorFilter: ColorFilter.mode(foregroundColor, BlendMode.srcIn),
      ),
    );
  }
}
