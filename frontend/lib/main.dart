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
      useInheritedMediaQuery: true,
      theme: ThemeData(
        fontFamily: 'OpenSans',
        primaryColor: const Color(0xFF075E54), // Primary color for app
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xFF075E54), // Set the primary color
          secondary: const Color(0xFF128C7E), // Set the secondary color
          onPrimary: Colors.white, // Set text color on primary (like AppBar)
        ),
      ),
      locale: DevicePreview.locale(context),
      builder: (context, widget) {
        return DevicePreview.appBuilder(context,
            widget); // Pass the widget through DevicePreview.appBuilder
      },
      home: const HomeScreen(),
    );
  }
}
