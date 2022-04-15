import 'package:ecommers_mobile/app/theme/color_palette.dart';
import 'package:ecommers_mobile/app/theme/text_style.dart';
import 'package:ecommers_mobile/app/widgets/app_drawer.dart';
import 'package:ecommers_mobile/app/widgets/contacts_page_widgets/contacts.dart';
import 'package:flutter/material.dart';

class ContactsPage extends StatelessWidget {
  const ContactsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.authBackground,
      appBar: AppBar(
        title: const Text(
          'Контакты',
          style: Style.montserrat20w400,
        ),
        backgroundColor: const Color(0xFF7D4848),
      ),
      drawer: const AppDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            Contacts(),
          ],
        ),
      ),
    );
  }
}
