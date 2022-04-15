import 'package:ecommers_mobile/app/pages/accessories/accessories_page.dart';
import 'package:ecommers_mobile/app/pages/acoustics/acoustics_page.dart';
import 'package:ecommers_mobile/app/pages/vinyl/vinyl_page.dart';
import 'package:ecommers_mobile/app/theme/color_palette.dart';
import 'package:ecommers_mobile/app/theme/text_style.dart';
import 'package:ecommers_mobile/app/widgets/app_drawer.dart';
import 'package:ecommers_mobile/core/blocs/consultation_bloc/consultation_bloc.dart';
import 'package:ecommers_mobile/core/blocs/consultation_bloc/consultation_event.dart';
import 'package:ecommers_mobile/core/blocs/consultation_bloc/consultation_state.dart';
import 'package:ecommers_mobile/core/utils/validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    VinylPage(),
    AcousticsPage(),
    AccessoriesPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  String _getTitle() {
    if (_selectedIndex == 0) {
      return 'Винил';
    } else if (_selectedIndex == 1) {
      return 'Акустика';
    } else {
      return 'Аксессуары';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.authBackground,
      appBar: AppBar(
        title: Text(
          _getTitle(),
          style: Style.montserrat20w400,
        ),
        backgroundColor: const Color(0xFF7D4848),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.album_sharp),
            label: 'Винил',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.double_music_note),
            label: 'Акустика',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.headphones),
            label: 'Аксессуары',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xFF7D4848),
        onTap: _onItemTapped,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext ctx) {
              return _consultationForm();
            },
          );
        },
        child: const Icon(CupertinoIcons.phone_fill),
        backgroundColor: const Color(0xFF7D4848),
      ),
      drawer: const AppDrawer(),
    );
  }

  Widget _consultationForm() {
    final _formKey = GlobalKey<FormState>();
    final TextEditingController _name = TextEditingController();
    final TextEditingController _number = TextEditingController();
    return BlocBuilder<ConsultationBloc, ConsultationState>(
      builder: (context, state) {
        final ConsultationBloc _bloc = BlocProvider.of<ConsultationBloc>(context);
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          content: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Имя',
                        labelText: 'Имя',
                      ),
                      controller: _name,
                      validator: (value) => Validator.validateName(value!),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: '297778855',
                        labelText: 'Мобильный телефон',
                      ),
                      controller: _number,
                      validator: (phoneNumber) => Validator.validatePhoneNumber(phoneNumber!),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(10, 30, 10, 25),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        fixedSize: const Size(500, 60),
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _bloc.add(CreateRequest(
                            name: _name.text,
                            phoneNumber: _number.text,
                          ));
                          Navigator.pop(context);
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              behavior: SnackBarBehavior.floating,
                              content: Text(
                                'Ваша заявка принята',
                                style: Style.montserrat,
                              ),
                              backgroundColor: Colors.green,
                              duration: Duration(seconds: 1),
                            ),
                          );
                        }
                      },
                      child: const Text(
                        'Заказать бесплатную консультацию',
                        textAlign: TextAlign.center,
                        style: Style.consultationButton2,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
