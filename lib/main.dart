import 'package:e_com/utils/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      // theme: ThemeData(
      //   textTheme: TextTheme(
      //     bodyLarge: TextStyle()
      //   )
      // ),
      darkTheme: TAppTheme.darkTheme,
    );
  }
}
