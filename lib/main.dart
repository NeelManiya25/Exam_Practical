import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:viva_practical_app/provider/quotes_provider.dart';
import 'package:viva_practical_app/views/screens/HomePage.dart';

import 'views/screens/SplachScreens.dart';
import 'views/screens/introduction_screen.dart';

void main() {
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (context) => quotesprovider())],
    builder: (context, _) {
      return MaterialApp(
        routes: {
          '/': (context) => const intro_page(),
          'SplashScreen': (context) => const SplashScreen(),
          'HomePage': (context) => HomeScreen(),
        },
        debugShowCheckedModeBanner: false,
        title: '',
        theme: ThemeData(
          useMaterial3: true,
        ),
      );
    },
  ));
}
