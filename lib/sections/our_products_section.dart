import 'package:flutter/material.dart';

import '../core/app_urls.dart';
import '../theme/app_colors.dart';
import '../widgets/product_card.dart';
import '../widgets/section_title.dart';

class OurProductsSection extends StatelessWidget {
  const OurProductsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 80),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppColors.surface.withAlpha(220),
            AppColors.background,
            AppColors.surface.withAlpha(180),
          ],
        ),
      ),
      child: Column(
        children: [
          const SectionTitle(
            subtitle: 'DESENVOLVIDO POR NÓS',
            title: 'Nossas Soluções Próprias',
          ),
          const SizedBox(height: 16),
          Text(
            'Produtos criados pela Kaesther Solutions para resolver desafios reais do mercado.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Colors.white.withAlpha(160),
              height: 1.6,
            ),
          ),
          const SizedBox(height: 60),
          Wrap(
            spacing: 28,
            runSpacing: 28,
            alignment: WrapAlignment.center,
            children: [
              ProductCard(
                icon: Icons.restaurant_menu_rounded,
                title: 'Food Pricing',
                tagline: 'Precificação inteligente para o setor alimentício',
                description:
                    'Calcule o preço ideal dos seus produtos com base em custos de ingredientes, mão de obra e margem de lucro. Ideal para restaurantes, padarias, confeitarias e food trucks.',
                features: const [
                  'Cadastro de fichas técnicas e receitas',
                  'Cálculo automático de custo por porção',
                  'Gestão de estoque e insumos',
                  'Relatórios de rentabilidade',
                ],
                gradient: AppColors.gradientFoodPricing,
                onAppStoreTap: AppUrls.launchFoodPricingAppStore,
                onPlayStoreTap: AppUrls.launchFoodPricingPlayStore,
              ),
              ProductCard(
                icon: Icons.directions_car_rounded,
                title: 'Kaesther Veículos',
                tagline: 'Plataforma de gestão para revendas automotivas',
                description:
                    'Gerencie seu estoque de veículos, clientes e negociações em um só lugar. Agilize vendas, acompanhe propostas e tenha controle total da sua revenda.',
                features: const [
                  'Cadastro e gestão de estoque de veículos',
                  'CRM integrado para leads e clientes',
                  'Controle de propostas e negociações',
                  'Relatórios de desempenho de vendas',
                ],
                gradient: AppColors.gradientKaestherVeiculos,
                onAppStoreTap: AppUrls.launchKaestherVeiculos,
                onPlayStoreTap: AppUrls.launchKaestherVeiculosPlayStore,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
