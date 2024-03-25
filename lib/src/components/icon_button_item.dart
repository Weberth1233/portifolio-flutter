import 'package:flutter/material.dart';
import 'package:portifolio/src/utils/colorhex.dart';
import 'package:portifolio/src/utils/url.dart';

class IconButtonItem extends StatelessWidget {
  final IconData iconData;
  final String url;

  const IconButtonItem({super.key, required this.iconData, required this.url});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Url.openUrl(url);
      },
      icon: Icon(
        iconData,
        size: 25,
        color: ColorHex.colorFromHex("#909096"),
      ),
    );
  }
}
