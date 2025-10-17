import 'package:ayol_uchun/features/home/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/dependemcies.dart';
import 'core/routing/router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(AyolUchun());
}

class AyolUchun extends StatelessWidget {
  const AyolUchun({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: dependencies,
      child: MultiBlocProvider(
        providers: blocDependencies,
        child: ScreenUtilInit(
          designSize: Size(375, 812),
          builder: (context, child) => MaterialApp.router(
            routerConfig: router,
          ),
        ),
      ),
    );
  }
}
