import 'package:url_launcher/url_launcher.dart';

abstract class Launcher {
  static Future<void> launch(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    }
  }

  static Future<void> launchEmail(String email) async {
    if (await canLaunchUrl(Uri.parse('mailto:$email'))) {
      await launchUrl(Uri.parse('mailto:$email'));
    }
  }

  static Future<void> launchPhone(String phone) async {
    if (await canLaunchUrl(Uri.parse('tel:$phone'))) {
      await launchUrl(Uri.parse('tel:$phone'));
    }
  }

  static Future<void> launchCalendar(String calendarLink) async {
    if (await canLaunchUrl(Uri.parse(calendarLink))) {
      await launchUrl(Uri.parse(calendarLink));
    }
  }
}
