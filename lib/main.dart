
import 'package:flight_book_app/utils/app_theme.dart';
import 'package:flight_book_app/utils/routes.dart';
import 'package:flight_book_app/view/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';




void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flight Booking',
      theme: AppTheme.themeData,
      routes: routes,
      initialRoute: HomeScreen.route,
    );
  }
}

