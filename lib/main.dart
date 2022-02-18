import 'package:agro_exam/routes/route.dart';
import 'package:flutter/material.dart';

void main() => runApp( MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final Routes _myRoute = Routes();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: _myRoute.onGenerateRoute,
      initialRoute: '/',
    );
  }
}
