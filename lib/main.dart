import 'package:flutter/material.dart';
import 'package:projeto_casa_arduino/provider/alarme.dart';
import 'package:projeto_casa_arduino/provider/comodos.dart';
import 'package:projeto_casa_arduino/provider/lampada.dart';
import 'package:projeto_casa_arduino/provider/users.dart';
import 'package:projeto_casa_arduino/routes/app_routes.dart';
import 'package:projeto_casa_arduino/views/comodos_list.dart';
import 'package:projeto_casa_arduino/views/home.dart';
import 'package:projeto_casa_arduino/views/login.dart';
import 'package:projeto_casa_arduino/views/device_list.dart';
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
        ChangeNotifierProvider(
          create: (ctx) => Comodos(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => Alarmes(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => Lampadas(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        routes: {
          AppRoutes.HOME: (_) => Home(),
          AppRoutes.COMODOS_LIST: (_) => ComodosList(),
          AppRoutes.SIGNUP: (_) => Signup(),
          AppRoutes.LOGIN: (_) => Login(),
          AppRoutes.SHOWDEVICES: (_) => DevicesList(),
        },
      ),
    );
  }
}
