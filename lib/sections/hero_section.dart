import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../core/app_urls.dart';
import '../theme/app_colors.dart';
import '../widgets/glow_button.dart';

class HeroSection extends StatelessWidget {
  final VoidCallback onServicesPressed;

  const HeroSection({super.key, required this.onServicesPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final isSmall = constraints.maxWidth < 800;
          return Column(
            children: [
              const SizedBox(height: 40),
              // Banner image
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  'assets/images/banner.png',
                  width: math.min(constraints.maxWidth, 900),
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 50),
              // Headline
              Text(
                'Transformamos ideias em',
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  fontSize: isSmall ? 28 : 48,
                  fontWeight: FontWeight.w300,
                  color: Colors.white.withAlpha(230),
                  height: 1.2,
                ),
              ),
              ShaderMask(
                shaderCallback: (bounds) => const LinearGradient(
                  colors: [AppColors.primary, AppColors.secondary],
                ).createShader(bounds),
                child: Text(
                  'Soluções Digitais',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    fontSize: isSmall ? 32 : 56,
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                    height: 1.3,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: math.min(constraints.maxWidth, 650),
                child: Text(
                  'Desenvolvemos aplicativos, softwares personalizados e soluções com inteligência artificial para impulsionar o crescimento da sua empresa.',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    fontSize: isSmall ? 16 : 20,
                    color: Colors.white.withAlpha(160),
                    height: 1.6,
                  ),
                ),
              ),
              const SizedBox(height: 48),
              Wrap(
                spacing: 20,
                runSpacing: 16,
                alignment: WrapAlignment.center,
                children: [
                  GlowButton(
                    label: 'Solicitar Orçamento',
                    onTap: AppUrls.launchWhatsApp,
                    icon: Icons.rocket_launch,
                  ),
                  OutlinedButton.icon(
                    onPressed: onServicesPressed,
                    icon: const Icon(Icons.arrow_downward, size: 18),
                    label: const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 14,
                      ),
                      child: Text('Nossos Serviços'),
                    ),
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.white,
                      side: BorderSide(color: Colors.white.withAlpha(60)),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 80),
            ],
          );
        },
      ),
    );
  }
}
