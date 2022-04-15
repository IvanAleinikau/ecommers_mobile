import 'package:ecommers_mobile/app/theme/color_palette.dart';
import 'package:ecommers_mobile/app/theme/text_style.dart';
import 'package:ecommers_mobile/app/widgets/order_button.dart';
import 'package:ecommers_mobile/core/model/news_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../widgets/back_button.dart';

class NewsDetailed extends StatefulWidget {
  final News news;

  const NewsDetailed({
    Key? key,
    required this.news,
  }) : super(key: key);

  @override
  State<NewsDetailed> createState() => _NewsDetailedState();
}

class _NewsDetailedState extends State<NewsDetailed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.authBackground,
      body: Container(
        decoration: const BoxDecoration(color: ColorPalette.authBackground),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 15, top: 50),
                    child: MyBackButton.back(),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: MediaQuery.of(context).size.width / 2.2,
                        width: MediaQuery.of(context).size.width / 2.2,
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
                    const SizedBox(width: 15),
                    Expanded(
                      flex: 1,
                      child: SizedBox(
                        height: MediaQuery.of(context).size.width / 2.5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            SizedBox(height: 10),
                            SizedBox(height: 30),
                            SizedBox(height: 40),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  widget.news.title,
                  style: Style.montserrat22w400.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  widget.news.subtitle,
                  style: Style.montserrat16w400.copyWith(color: Colors.grey.shade700),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  widget.news.description,
                  style: Style.montserrat16w400,
                ),
              ),
              const SizedBox(height: 35),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  DateFormat('dd.MM.yyyy').format(widget.news.date),
                  style: Style.montserrat14w400,
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
