import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../core/app_urls.dart';
import '../theme/app_colors.dart';

class CtaSection extends StatelessWidget {
  const CtaSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
      padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 60),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        gradient: const LinearGradient(
          colors: [AppColors.primaryDark, AppColors.primaryDarker],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.primary.withAlpha(40),
            blurRadius: 60,
            spreadRadius: 0,
          ),
        ],
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final isSmall = constraints.maxWidth < 600;
          return Column(
            children: [
              Text(
                'Pronto para transformar sua empresa?',
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  fontSize: isSmall ? 24 : 36,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'Vamos conversar sobre como podemos ajudar seu negócio a crescer com tecnologia.',
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  fontSize: isSmall ? 14 : 18,
                  color: Colors.white.withAlpha(200),
                ),
              ),
              const SizedBox(height: 32),
              ElevatedButton.icon(
                onPressed: AppUrls.launchWhatsApp,
                icon: const FaIcon(FontAwesomeIcons.whatsapp, size: 20),
                label: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 16,
                  ),
                  child: Text(
                    'Converse pelo WhatsApp',
                    style: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.whatsapp,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  elevation: 8,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
