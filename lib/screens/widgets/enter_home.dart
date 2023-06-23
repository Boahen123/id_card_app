import 'package:logger/logger.dart';
import 'package:url_launcher/url_launcher.dart';

var console = Logger();

class Launcher {
  final Uri url; // location for the URI endpoint

  Launcher(this.url);

  /// The function retrieves the current time from an API and adjusts it based on the timezone offset.
  Future<void> openUrl() async {
    try {
      if (await canLaunchUrl(url)) {
        await launchUrl(url);
      }
    } catch (exception) {
      console.d('error did not work $exception');
    }
  }
}
