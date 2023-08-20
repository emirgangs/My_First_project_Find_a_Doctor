// ignore_for_file: unused_element
import 'package:doctor_app_example/const/texts.dart';
import 'package:doctor_app_example/utility/color.dart';
import 'package:doctor_app_example/utility/edgeInsets.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

int phoneNumber = 905383364752;
final Uri url = Uri.parse('$wplinkUrl$phoneNumber');

Future<void> makeaChat() async {
  if (await launchUrl(url)) {
    await launchUrl(url);
  } else {
    throw wpThrowText;
  }
}

class WpLinkButton extends StatelessWidget {
  const WpLinkButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width * 0.12,
      width: MediaQuery.of(context).size.width * 0.4,
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
            backgroundColor: ColorItems().normalGreen,
            shape: RoundedRectangleBorder(
                borderRadius: fontSize().sandartCardsCircular)),
        onPressed: () {
          makeaChat();
        },
        icon: const Icon(Icons.phone),
        label: const Text(wpButtonText),
      ),
    );
  }
}
