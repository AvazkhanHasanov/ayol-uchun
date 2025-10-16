import 'package:ayol_uchun/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(AyolUchun());
}

class AyolUchun extends StatelessWidget {
  const AyolUchun({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}
