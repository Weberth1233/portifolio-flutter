import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 4,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
        borderRadius: const BorderRadius.all(Radius.circular(20)),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Wrap(
          alignment: WrapAlignment.spaceAround,
          children: [
            Text(
              'Home',
              style:
                  TextStyle(color: Colors.green, fontWeight: FontWeight.w300),
            ),
            Text('Sobre'),
            Text('Projetos'),
            Text('Experiências'),
            Text('Contato'),
          ],
        ),
      ),
    );
  }
}
