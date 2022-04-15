import 'package:auto_route/auto_route.dart';
import 'package:ecommers_mobile/app/theme/text_style.dart';
import 'package:ecommers_mobile/core/model/news_model.dart';
import 'package:ecommers_mobile/core/router/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NewsWidget extends StatefulWidget {
  final News news;

  const NewsWidget({
    Key? key,
    required this.news,
  }) : super(key: key);

  @override
  State<NewsWidget> createState() => _NewsWidgetState();
}

class _NewsWidgetState extends State<NewsWidget> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: InkWell(
        onTap: () => context.router.navigate(NewsDetailedRoute(news: widget.news)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: Container(
                height: size.width / 4,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      widget.news.imageUrl,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text(
                widget.news.title,
                style: Style.montserrat16w400.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text(
                widget.news.subtitle,
                style: Style.montserrat12w400.copyWith(color: Colors.grey),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text(
                DateFormat('dd.MM.yyyy').format(widget.news.date),
                style: Style.montserrat12w400.copyWith(color: const Color(0xFF575656)),
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
