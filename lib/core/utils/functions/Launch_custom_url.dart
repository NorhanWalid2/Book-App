import 'package:book_app/core/widgets/show_snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> LaunchCustomUrl(context, String? Url) async {
  if (Url != null) {
    Uri uri = Uri.parse(Url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      showSnackBar(context, "Can't Launch $Url", Colors.red);
    }
  }
}
