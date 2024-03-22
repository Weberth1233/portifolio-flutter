import 'package:flutter/material.dart';

class CardComponent extends StatelessWidget {
  final String title;
  final String subtitile;
  final IconData iconData;
  const CardComponent(
      {super.key,
      required this.title,
      required this.subtitile,
      required this.iconData});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      height: 310,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: const BoxDecoration(color: Colors.yellow),
            child: Icon(
              iconData,
              size: 30,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            subtitile,
            style: const TextStyle(fontSize: 13),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              const Icon(Icons.fingerprint),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Visualizar",
                  style: TextStyle(color: Colors.green),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}