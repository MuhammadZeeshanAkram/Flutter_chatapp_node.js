import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:frontend/Screens/home_screen.dart';


void main() => runApp(
  DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => const MyApp(), // Wrap your app
  ),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // ignore: deprecated_member_use
      useInheritedMediaQuery: true,
      theme: ThemeData(
        fontFamily: 'OpenSans',
        primaryColor: const Color(0xFF075E54), 
        accentColor: const Color(0xFF128C7E),
      ),
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: const HomeScreen(),
    );
  }
}