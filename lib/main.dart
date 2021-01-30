import 'package:flutter/material.dart';
import 'package:books_app/Router/router.dart';
import 'package:books_app/Screens/initial_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Book Club", //This is shown when the app is minimized
      home: InitialScreen(),
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
