import 'package:flutter/material.dart';
import 'package:project_aranyani_mobile_app/pages/auth.dart';
import 'package:provider/provider.dart';

import 'Colors/colour_scheme.dart';
import 'theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => ThemeModel(),
      child: Consumer(
        builder: (context, ThemeModel value, child) {
          return MaterialApp(
            title: 'Book Club App',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              colorScheme: colourScheme(),
              fontFamily: "Montserrat",
              useMaterial3: true,
              // pageTransitionsTheme: const PageTransitionsTheme(
              //   builders: <TargetPlatform, PageTransitionsBuilder>{
              //     TargetPlatform.android: OpenUpwardsPageTransitionsBuilder(),
              //     TargetPlatform.iOS: OpenUpwardsPageTransitionsBuilder(),
              //   },
              // ),
            ),
            home: const AuthenticationPage(
              signIn: true,
            ),
          );
        },
      ),
    );
  }
}
