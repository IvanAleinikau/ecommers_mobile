import 'package:ecommers_mobile/app/theme/text_style.dart';
import 'package:ecommers_mobile/core/model/vinyl_model.dart';
import 'package:ecommers_mobile/core/router/router.gr.dart';
import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

class VinylWidget extends StatefulWidget {
  final Vinyl vinyl;

  const VinylWidget({
    Key? key,
    required this.vinyl,
  }) : super(key: key);

  @override
  State<VinylWidget> createState() => _VinylWidgetState();
}

class _VinylWidgetState extends State<VinylWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: InkWell(
        onTap: () => context.router.navigate(VinylDetailedRoute(vinyl: widget.vinyl)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    widget.vinyl.imageUrl,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 15),
                Text(
                  widget.vinyl.title,
                  style: Style.montserrat16w400.copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                Text(
                  widget.vinyl.year,
                  style: Style.montserrat12w400.copyWith(color: Colors.grey),
                ),
                const SizedBox(height: 5),
                Text(
                  '${widget.vinyl.cost} руб.',
                  style: Style.montserrat16w400.copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 5),
              ],
            )
          ],
        ),
      ),
    );
  }
}
