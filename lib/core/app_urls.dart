import 'package:url_launcher/url_launcher.dart';

abstract class AppUrls {
  static const String whatsappNumber = '5544998940764';
  static const String whatsappMessage =
      'Olá! Gostaria de saber mais sobre os serviços da Kaesther Solutions.';
  static const String emailComercial = 'comercial@kaesthersolutions.com.br';
  static const String emailSuporte = 'suporte@kaesthersolutions.com.br';
  static const String instagram = '';
  static const String foodPricingAppStore =
      'https://apps.apple.com/us/app/food-pricing/id6760420052';
  static const String foodPricingPlayStore =
      'https://play.google.com/store/apps/details?id=br.com.foodpricing';
  static const String kaestherVeiculosAppStore =
      'https://apps.apple.com/us/app/kaesther-veiculos/id1234567890';
  static const String kaestherVeiculosPlayStore =
      'https://play.google.com/store/apps/details?id=br.com.kaestherveiculos';

  static Uri get whatsappUri =>
      Uri.parse('https://wa.me/$whatsappNumber?text=$whatsappMessage');

  static Uri get emailComercialUri => Uri.parse('mailto:$emailComercial');
  static Uri get emailSuporteUri => Uri.parse('mailto:$emailSuporte');

  static Uri get instagramUri => Uri.parse(instagram);

  static Future<void> launchWhatsApp() async {
    if (await canLaunchUrl(whatsappUri)) {
      await launchUrl(whatsappUri, mode: LaunchMode.externalApplication);
    }
  }

  static Future<void> launchEmailComercial() async {
    if (await canLaunchUrl(emailComercialUri)) {
      await launchUrl(emailComercialUri);
    }
  }

  static Future<void> launchEmailSuporte() async {
    if (await canLaunchUrl(emailSuporteUri)) {
      await launchUrl(emailSuporteUri);
    }
  }

  static Future<void> launchInstagram() async {
    if (await canLaunchUrl(instagramUri)) {
      await launchUrl(instagramUri, mode: LaunchMode.externalApplication);
    }
  }

  static Uri get foodPricingAppStoreUri => Uri.parse(foodPricingAppStore);
  static Uri get foodPricingPlayStoreUri => Uri.parse(foodPricingPlayStore);
  static Uri get kaestherVeiculosAppStoreUri =>
      Uri.parse(kaestherVeiculosAppStore);
  static Uri get kaestherVeiculosPlayStoreUri =>
      Uri.parse(kaestherVeiculosPlayStore);

  static Future<void> launchFoodPricingAppStore() async {
    if (await canLaunchUrl(foodPricingAppStoreUri)) {
      await launchUrl(
        foodPricingAppStoreUri,
        mode: LaunchMode.externalApplication,
      );
    }
  }

  static Future<void> launchFoodPricingPlayStore() async {
    if (await canLaunchUrl(foodPricingPlayStoreUri)) {
      await launchUrl(
        foodPricingPlayStoreUri,
        mode: LaunchMode.externalApplication,
      );
    }
  }

  static Future<void> launchKaestherVeiculos() async {
    if (await canLaunchUrl(kaestherVeiculosAppStoreUri)) {
      await launchUrl(
        kaestherVeiculosAppStoreUri,
        mode: LaunchMode.externalApplication,
      );
    }
  }

  static Future<void> launchKaestherVeiculosPlayStore() async {
    if (await canLaunchUrl(kaestherVeiculosPlayStoreUri)) {
      await launchUrl(
        kaestherVeiculosPlayStoreUri,
        mode: LaunchMode.externalApplication,
      );
    }
  }
}
