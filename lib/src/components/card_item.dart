import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:portifolio/src/utils/colorhex.dart';

class CardItem extends StatelessWidget {
  final String title;
  final String subtitile;
  final IconData iconData;
  final bool viewButton;

  const CardItem(
      {super.key,
      required this.title,
      required this.subtitile,
      required this.iconData,
      required this.viewButton});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      height: 310,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                iconData,
                size: 25,
                color: Colors.white,
              ),
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
            style: TextStyle(
                fontSize: 13, color: ColorHex.colorFromHex("#909096")),
          ),
          const SizedBox(
            height: 15,
          ),
          viewButton == false
              ? Container()
              : Row(
                  children: [
                    const Icon(Icons.fingerprint),
                    TextButton(
                      onPressed: () {
                        Get.defaultDialog(
                          backgroundColor: Colors.black,
                          title: title,
                          titleStyle: const TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          content: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30, vertical: 30),
                            child: Column(
                              children: [
                                Text(
                                  subtitile,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontStyle: FontStyle.italic),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.white),
                                    onPressed: () {},
                                    child: const Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          "Github",
                                          style: TextStyle(color: Colors.black),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Icon(
                                          FontAwesomeIcons.github,
                                          color: Colors.black,
                                        ),
                                      ],
                                    ))
                              ],
                            ),
                          ),
                          titlePadding: const EdgeInsets.all(8.0),
                        );
                      },
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
