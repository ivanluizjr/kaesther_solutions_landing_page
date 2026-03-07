import 'package:url_launcher/url_launcher.dart';

abstract class AppUrls {
  static const String whatsappNumber = '5544998940764';
  static const String whatsappMessage =
      'Olá! Gostaria de saber mais sobre os serviços da Kaesther Solutions.';
  static const String email = 'kaesthersolutions@gmail.com';
  static const String instagram = '';

  static Uri get whatsappUri =>
      Uri.parse('https://wa.me/$whatsappNumber?text=$whatsappMessage');

  static Uri get emailUri => Uri.parse('mailto:$email');

  static Uri get instagramUri => Uri.parse(instagram);

  static Future<void> launchWhatsApp() async {
    if (await canLaunchUrl(whatsappUri)) {
      await launchUrl(whatsappUri, mode: LaunchMode.externalApplication);
    }
  }

  static Future<void> launchEmail() async {
    if (await canLaunchUrl(emailUri)) {
      await launchUrl(emailUri);
    }
  }

  static Future<void> launchInstagram() async {
    if (await canLaunchUrl(instagramUri)) {
      await launchUrl(instagramUri, mode: LaunchMode.externalApplication);
    }
  }
}
