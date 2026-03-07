import 'package:flutter/material.dart';

import 'pages/landing_page.dart';
import 'theme/app_theme.dart';

class KaestherApp extends StatelessWidget {
  const KaestherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kaesther Solutions - Soluções Digitais',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      home: const LandingPage(),
    );
  }
}
