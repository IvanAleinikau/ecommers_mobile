import 'package:ecommers_mobile/app/theme/color_palette.dart';
import 'package:ecommers_mobile/app/theme/text_style.dart';
import 'package:ecommers_mobile/app/widgets/app_drawer.dart';
import 'package:ecommers_mobile/app/widgets/main_page_widgets/brands.dart';
import 'package:flutter/material.dart';

class AboutUsPage extends StatefulWidget {
  const AboutUsPage({Key? key}) : super(key: key);

  @override
  _AboutUsPageState createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.authBackground,
      appBar: AppBar(
        title: const Text(
          'О нас',
          style: Style.montserrat20w400,
        ),
        backgroundColor: const Color(0xFF7D4848),
      ),
      drawer: const AppDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 70),
              const Text(
                'О нас',
                style: Style.info,
              ),
              Container(
                padding: const EdgeInsets.only(top: 10),
                child: const Text(
                  'Vinyl Collection является официальным представителем бренда Crosley, Audio-Technica, Pro-Ject, Yamaha, Klipsch, Jamo, Dali, Marantz, Denon, Thorens в Беларуси.',
                  style: Style.info2,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 10),
                child: const Text(
                  'Большой выбор проигрывателей винила, пластинок и предметов интерьера.',
                  style: Style.info2,
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
