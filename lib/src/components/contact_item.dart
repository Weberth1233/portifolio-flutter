import 'package:flutter/material.dart';

class ContactItem extends StatelessWidget {
  final IconData icon;
  final String text;
  const ContactItem({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(onPressed: () {}, icon: Icon(icon)),
        const SizedBox(width: 10),
        Text(text)
      ],
    );
  }
}
