import 'package:flutter/material.dart';
import 'package:projeto_casa_arduino/provider/users.dart';
import 'package:projeto_casa_arduino/routes/app_routes.dart';
import 'package:projeto_casa_arduino/views/house.dart';
import 'package:projeto_casa_arduino/views/login.dart';
import 'package:projeto_casa_arduino/views/signup.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => Users(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        routes: {
          AppRoutes.LOGIN: (_) => Login(),
          AppRoutes.COMODOS: (_) => Comodo(),
          AppRoutes.SIGNUP: (_) => Signup()
        },
      ),
    );
  }
}
