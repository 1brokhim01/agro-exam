import 'package:agro_exam/screens/blog_read_screen/blog_read_screen.dart';
import 'package:agro_exam/screens/flash_screen/flash_screen.dart';
import 'package:agro_exam/screens/home_screen/my_home_page.dart';
import 'package:agro_exam/screens/register_screen/register_screen.dart';
import 'package:flutter/material.dart';
class Routes {
  Route? onGenerateRoute(RouteSettings s) {
    var args = s.arguments;
    switch (s.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => const First());
      case '/register':
        return MaterialPageRoute(builder: (context) => const Register_screen());
      case '/home':
        return MaterialPageRoute(builder: (context) => const MyHomePage());
      case '/blog_read':
        return MaterialPageRoute(builder: (context) => const Blog_read_screen());
    
    }
  }
}
