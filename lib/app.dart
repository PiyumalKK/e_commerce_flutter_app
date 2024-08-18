import 'package:e_com/features/authentication/screens/onboarding/onboarding.dart';
import 'package:e_com/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      // theme: ThemeData(
      //   textTheme: TextTheme(
      //     bodyLarge: TextStyle()
      //   )
      // ),
      darkTheme: TAppTheme.darkTheme,
      home: OnBoardingScreen(),
    );
  }
}
