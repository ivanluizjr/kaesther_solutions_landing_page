import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import '../widgets/section_title.dart';
import '../widgets/service_card.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 80),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColors.background,
            AppColors.surface.withAlpha(200),
            AppColors.background,
          ],
        ),
      ),
      child: Column(
        children: const [
          SectionTitle(subtitle: 'O QUE FAZEMOS', title: 'Nossos Serviços'),
          SizedBox(height: 60),
          Wrap(
            spacing: 24,
            runSpacing: 24,
            alignment: WrapAlignment.center,
            children: [
              ServiceCard(
                icon: Icons.phone_android,
                title: 'Aplicativos Mobile',
                description:
                    'Apps nativos e multiplataforma para Android e iOS com design intuitivo e performance excepcional.',
                gradient: AppColors.gradientMobile,
              ),
              ServiceCard(
                icon: Icons.computer,
                title: 'Softwares sob Medida',
                description:
                    'Sistemas web e desktop desenvolvidos especificamente para as necessidades do seu negócio.',
                gradient: AppColors.gradientSoftware,
              ),
              ServiceCard(
                icon: Icons.psychology,
                title: 'Inteligência Artificial',
                description:
                    'Soluções com IA para automação, análise de dados e otimização de processos empresariais.',
                gradient: AppColors.gradientAI,
              ),
              ServiceCard(
                icon: Icons.cloud,
                title: 'Cloud & DevOps',
                description:
                    'Infraestrutura em nuvem escalável com CI/CD, monitoramento e alta disponibilidade.',
                gradient: AppColors.gradientCloud,
              ),
              ServiceCard(
                icon: Icons.shopping_cart,
                title: 'E-Commerce',
                description:
                    'Plataformas de vendas online completas com gestão de pedidos, pagamentos e logística integrada.',
                gradient: AppColors.gradientEcommerce,
              ),
              ServiceCard(
                icon: Icons.support_agent,
                title: 'Consultoria Tech',
                description:
                    'Assessoria estratégica em tecnologia para transformação digital e inovação empresarial.',
                gradient: AppColors.gradientConsulting,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
