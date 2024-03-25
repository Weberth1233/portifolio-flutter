import 'package:url_launcher/url_launcher.dart';

abstract class Url {
  static void openUrl(String urlRedirect) async {
    if (await canLaunchUrl(Uri.parse(urlRedirect))) {
      await launchUrl(Uri.parse(urlRedirect));
    } else {
      throw 'Url não encontrada';
    }
  }
}
