import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:shoplon/utils/helpers/routes.dart';
import 'package:shoplon/utils/theme/app_theme.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: false,
      builder: (context) => const MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme(context),
      themeMode: ThemeMode.light,
      title: 'shoplon',
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      routes: Routes.appRoutes,
      initialRoute: Routes.onboarding,
    );
  }
}
