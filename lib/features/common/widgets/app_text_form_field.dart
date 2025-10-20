import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../core/utils/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ayol_uchun/core/utils/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
    this.filledColor = AppColors.white,
    required this.controller,
    required this.hintText,
    this.readOnly = false,
    this.inputFormatter,
    this.keyboardType,
    this.width = 341,
    this.validator,
    this.onChanged,
    this.suffix,
    this.prefix,
    this.label,
    this.onTap,
    super.key,
  });

  final double width;
  final bool readOnly;
  final String? label;
  final String? suffix;

  final String? prefix;
  final String hintText;
  final Color filledColor;
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
            onTap:
                onTap ??
                () {
                  if (readOnly) FocusScope.of(context).unfocus();
                },
            readOnly: readOnly,
            onChanged: onChanged,
            validator: validator,
            controller: controller,
            keyboardType: keyboardType,
            cursorColor: AppColors.grey,
            inputFormatters: inputFormatter,
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.white,
              prefixIcon: prefix != null
                  ? Padding(
                      padding: EdgeInsets.only(left: 12.w),
                      child: SvgPicture.asset(prefix!, width: 24.r, height: 24.r),
                    )
                  : null,
              prefixIconConstraints: BoxConstraints.loose(Size(double.infinity, double.infinity)),
              suffixIconConstraints: BoxConstraints.loose(Size(double.infinity, double.infinity)),
              suffixIcon: suffix != null
                  ? Padding(
                      padding: EdgeInsets.only(right: 12.w),
                      child: SvgPicture.asset(suffix!, width: 24.r, height: 24.r),
                    )
                  : null,
              hintStyle: AppTextStyles.bodyRegular.copyWith(color: AppColors.textLight),
              hintText: hintText,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.r),
                borderSide: BorderSide(color: AppColors.white),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.r),
                borderSide: BorderSide(color: AppColors.white),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.r),
                borderSide: BorderSide(color: AppColors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
