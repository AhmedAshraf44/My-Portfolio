import 'package:url_launcher/url_launcher.dart';

void openExternalLink() async {
  final url = Uri.parse(
      "https://drive.google.com/file/d/1BcJFgMNtZmImrXuuOV_KbbXOrZtii0l4/view?usp=sharing");
  if (await canLaunchUrl(url)) {
    await launchUrl(url, webOnlyWindowName: '_blank'); // Opens in new tab
  } else {
    throw 'Could not launch $url';
  }
}
