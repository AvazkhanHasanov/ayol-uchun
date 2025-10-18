import 'package:ayol_uchun/features/common/widgets/app_icon_button.dart';
import 'package:ayol_uchun/features/common/widgets/app_text_button.dart';
import 'package:ayol_uchun/features/common/widgets/app_text_button_with_row.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Column(
              spacing: 12,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppTextButton(text: 'bos', onPressed: () {}),
                AppTextButtonWithRow(onPressed: () {}, children: [Text('data'), Icon(Icons.ac_unit_sharp)]),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
