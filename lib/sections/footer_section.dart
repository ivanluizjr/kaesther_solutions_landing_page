import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 32),
      decoration: BoxDecoration(
        border: Border(top: BorderSide(color: Colors.white.withAlpha(20))),
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final isSmall = constraints.maxWidth < 600;
          if (isSmall) {
            return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/logo.png', height: 30),
                    const SizedBox(width: 10),
                    Text(
                      'Kaesther Solutions',
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.white.withAlpha(160),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Text(
                  '© 2026 Kaesther Solutions. Todos os direitos reservados.',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    fontSize: 12,
                    color: Colors.white.withAlpha(100),
                  ),
                ),
              ],
            );
          }
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset('assets/images/logo.png', height: 30),
                  const SizedBox(width: 10),
                  Text(
                    'Kaesther Solutions',
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.white.withAlpha(160),
                    ),
                  ),
                ],
              ),
              Text(
                '© 2025 Kaesther Solutions. Todos os direitos reservados.',
                style: GoogleFonts.inter(
                  fontSize: 13,
                  color: Colors.white.withAlpha(100),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
