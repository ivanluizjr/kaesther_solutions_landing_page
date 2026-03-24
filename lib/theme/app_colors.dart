import 'package:flutter/material.dart';

abstract class AppColors {
  // Primary
  static const Color primary = Color(0xFF2196F3);
  static const Color primaryLight = Color(0xFF42A5F5);
  static const Color primaryDark = Color(0xFF1565C0);
  static const Color primaryDarker = Color(0xFF0D47A1);

  // Secondary / Accent
  static const Color secondary = Color(0xFFFF8A00);
  static const Color secondaryDark = Color(0xFFE65100);

  // Background
  static const Color background = Color(0xFF0A0E1A);
  static const Color surface = Color(0xFF0F1425);
  static const Color cardDefault = Color(0xFF111728);
  static const Color cardHover = Color(0xFF151B30);

  // WhatsApp
  static const Color whatsapp = Color(0xFF25D366);

  // Social
  static const Color instagram = Color(0xFFE1306C);

  // Service gradients
  static const List<Color> gradientMobile = [
    Color(0xFF2196F3),
    Color(0xFF1565C0),
  ];
  static const List<Color> gradientSoftware = [
    Color(0xFFFF8A00),
    Color(0xFFE65100),
  ];
  static const List<Color> gradientAI = [Color(0xFF7C4DFF), Color(0xFF4527A0)];
  static const List<Color> gradientCloud = [
    Color(0xFF00BCD4),
    Color(0xFF00838F),
  ];
  static const List<Color> gradientEcommerce = [
    Color(0xFF4CAF50),
    Color(0xFF2E7D32),
  ];
  static const List<Color> gradientConsulting = [
    Color(0xFFE91E63),
    Color(0xFFAD1457),
  ];

  // Product gradients
  static const List<Color> gradientFoodPricing = [
    Color(0xFF43A047),
    Color(0xFF1B5E20),
  ];
  static const List<Color> gradientKaestherVeiculos = [
    Color(0xFF1E88E5),
    Color(0xFF0D47A1),
  ];
}
