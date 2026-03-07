import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/section_title.dart';
import '../widgets/stat_item.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 80),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final isSmall = constraints.maxWidth < 800;
          return Column(
            children: [
              const SectionTitle(
                subtitle: 'QUEM SOMOS',
                title: 'Sobre a Kaesther Solutions',
              ),
              const SizedBox(height: 48),
              SizedBox(
                width: math.min(constraints.maxWidth, 800),
                child: Text(
                  'Somos uma empresa especializada em soluções digitais, comprometida em entregar tecnologia de ponta para impulsionar negócios. '
                  'Com uma equipe apaixonada por inovação, transformamos desafios complexos em soluções elegantes e eficientes.',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    fontSize: isSmall ? 16 : 18,
                    color: Colors.white.withAlpha(180),
                    height: 1.7,
                  ),
                ),
              ),
              const SizedBox(height: 60),
              const Wrap(
                spacing: 40,
                runSpacing: 40,
                alignment: WrapAlignment.center,
                children: [
                  StatItem(value: '50+', label: 'Projetos Entregues'),
                  StatItem(value: '30+', label: 'Clientes Satisfeitos'),
                  StatItem(value: '8+', label: 'Anos de Experiência'),
                  StatItem(value: '24/7', label: 'Suporte Técnico'),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
