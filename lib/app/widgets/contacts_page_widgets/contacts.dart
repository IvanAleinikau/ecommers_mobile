import 'package:ecommers_mobile/app/theme/text_style.dart';
import 'package:flutter/material.dart';

class Contacts extends StatelessWidget {
  const Contacts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 70),
            child: const Text(
              'Контакты:',
              style: Style.contacts,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 50),
            child: const Text(
              'Брест, ул. Дзержинского 3, ТЦ "Общага", 1 этаж, пав. 107',
              style: Style.info2,
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 30),
            child: const Text(
              '+375(33)672-90-86',
              style: Style.info2,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 30),
            child: const Text(
              'vinylcollection@gmail.com',
              style: Style.info2,
            ),
          ),
        ],
      ),
    );
  }
}
