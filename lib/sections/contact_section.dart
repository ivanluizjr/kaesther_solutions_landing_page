import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../core/app_urls.dart';
import '../theme/app_colors.dart';
import '../widgets/contact_card.dart';
import '../widgets/section_title.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 80),
      child: Column(
        children: [
          const SectionTitle(
            subtitle: 'ENTRE EM CONTATO',
            title: 'Fale Conosco',
          ),
          const SizedBox(height: 48),
          Wrap(
            spacing: 32,
            runSpacing: 32,
            alignment: WrapAlignment.center,
            children: [
              ContactCard(
                icon: FontAwesomeIcons.whatsapp,
                title: 'WhatsApp',
                subtitle: 'Resposta rápida',
                onTap: AppUrls.launchWhatsApp,
                color: AppColors.whatsapp,
              ),
              ContactCard(
                icon: Icons.email_outlined,
                title: 'E-mail',
                subtitle: AppUrls.email,
                onTap: AppUrls.launchEmail,
                color: AppColors.primary,
              ),
              ContactCard(
                icon: FontAwesomeIcons.instagram,
                title: 'Instagram',
                subtitle: '@kaesthersolutions',
                onTap: AppUrls.launchInstagram,
                color: AppColors.instagram,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
