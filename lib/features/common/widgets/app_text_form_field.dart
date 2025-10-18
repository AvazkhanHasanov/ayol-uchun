import 'package:ayol_uchun/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../core/utils/colors.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
    required this.controller,
    required this.hintText,
    this.needIcon = false,
    this.readOnly = false,
    this.inputFormatter,
    required this.icon,
    this.keyboardType,
    this.width = 341,
    this.validator,
    this.onChanged,
    this.prefix,
    this.label,
    this.onTap,
    super.key,
  });

  final String icon;
  final double width;
  final bool readOnly;
  final String? label;
  final bool needIcon;
  final Widget? prefix;
  final String hintText;
  final VoidCallback? onTap;
  final TextInputType? keyboardType;
  final void Function(String)? onChanged;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatter;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        label != null
            ? Text(label!, style: AppTextStyles.h5SemiBold.copyWith(color: AppColors.textGrey))
            : SizedBox.shrink(),
        SizedBox(
          width: width.w,
          child: TextFormField(
            onTap: onTap,
            readOnly: readOnly,
            onChanged: onChanged,
            validator: validator,
            cursorColor: AppColors.grey,
            keyboardType: keyboardType,
            controller: controller,
            inputFormatters: inputFormatter,
            decoration: InputDecoration(
              prefix: prefix,
              prefixIconConstraints: BoxConstraints.loose(Size(double.infinity, double.infinity)),
              suffixIconConstraints: BoxConstraints.loose(Size(double.infinity, double.infinity)),
              suffixIcon: needIcon
                  ? Padding(
                      padding: EdgeInsets.only(right: 12),
                      child: SvgPicture.asset(icon, width: 24.r, height: 24.r),
                    )
                  : SizedBox.shrink(),
              hintStyle: AppTextStyles.bodyRegular.copyWith(color: AppColors.textLight),
              hintText: hintText,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.r),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.r),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.r),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
