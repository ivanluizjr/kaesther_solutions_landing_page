import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../core/app_urls.dart';
import '../theme/app_colors.dart';
import '../widgets/glow_button.dart';
import '../widgets/nav_link.dart';

class NavBarSection extends StatelessWidget {
  final VoidCallback onServicesTap;
  final VoidCallback onAboutTap;
  final VoidCallback onContactTap;

  const NavBarSection({
    super.key,
    required this.onServicesTap,
    required this.onAboutTap,
    required this.onContactTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final isSmall = constraints.maxWidth < 700;
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Logo
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset('assets/images/logo.png', height: 45),
                  if (!isSmall) ...[
                    const SizedBox(width: 12),
                    Text(
                      'KAESTHER',
                      style: GoogleFonts.inter(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        letterSpacing: 2,
                      ),
                    ),
                    Text(
                      ' SOLUTIONS',
                      style: GoogleFonts.inter(
                        fontSize: 22,
                        fontWeight: FontWeight.w300,
                        color: AppColors.primary,
                        letterSpacing: 2,
                      ),
                    ),
                  ],
                ],
              ),
              // Nav Links
              if (!isSmall)
                Row(
                  children: [
                    NavLink(label: 'Serviços', onTap: onServicesTap),
                    const SizedBox(width: 32),
                    NavLink(label: 'Sobre', onTap: onAboutTap),
                    const SizedBox(width: 32),
                    NavLink(label: 'Contato', onTap: onContactTap),
                    const SizedBox(width: 32),
                    GlowButton(
                      label: 'Fale Conosco',
                      onTap: AppUrls.launchWhatsApp,
                    ),
                  ],
                )
              else
                IconButton(
                  icon: const Icon(Icons.menu, color: Colors.white),
                  onPressed: () => _showMobileMenu(context),
                ),
            ],
          );
        },
      ),
    );
  }

  void _showMobileMenu(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: AppColors.surface,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (ctx) => Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(
                Icons.miscellaneous_services,
                color: AppColors.primary,
              ),
              title: const Text(
                'Serviços',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.pop(ctx);
                onServicesTap();
              },
            ),
            ListTile(
              leading: const Icon(Icons.info_outline, color: AppColors.primary),
              title: const Text('Sobre', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(ctx);
                onAboutTap();
              },
            ),
            ListTile(
              leading: const Icon(Icons.contact_mail, color: AppColors.primary),
              title: const Text(
                'Contato',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.pop(ctx);
                onContactTap();
              },
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: GlowButton(
                label: 'Fale Conosco',
                onTap: () {
                  Navigator.pop(ctx);
                  AppUrls.launchWhatsApp();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
