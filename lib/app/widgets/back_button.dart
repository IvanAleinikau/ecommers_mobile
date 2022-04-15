import 'package:ecommers_mobile/app/theme/text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class MyBackButton extends StatelessWidget {
  final bool isBack;

  const MyBackButton({Key? key})
      : isBack = false,
        super(key: key);

  const MyBackButton.back({Key? key})
      : isBack = true,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(5),
      onTap: () => context.router.pop(),
      child: Padding(
        padding: const EdgeInsets.all(3),
        child: Row(
          children: [
            const Icon(
              CupertinoIcons.arrow_left,
              size: 16,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              isBack ? 'Назад' : 'В магазин',
              style: Style.montserrat12w400,
            ),
          ],
        ),
      ),
    );
  }
}
