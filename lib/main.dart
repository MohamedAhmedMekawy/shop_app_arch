import 'package:flutter/material.dart';
import 'package:shop_app_arch/shop_app/auth/login/presentation/screens/auth_screen/login.dart';
import 'package:shop_app_arch/core/services/service_locator.dart' ;


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  ServicesLocator().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: LoginScreen(),
    );
  }
}
