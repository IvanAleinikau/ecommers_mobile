import 'package:auto_route/auto_route.dart';
import 'package:ecommers_mobile/app/theme/text_style.dart';
import 'package:ecommers_mobile/core/blocs/login_bloc/login_cubit.dart';
import 'package:ecommers_mobile/core/blocs/login_bloc/login_state.dart';
import 'package:ecommers_mobile/core/router/router.gr.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  late LoginCubit _cubit;
  late User? _user;

  @override
  void initState() {
    _user = FirebaseAuth.instance.currentUser;
    _cubit = LoginCubit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      bloc: _cubit,
      listener: (context, state) {
        state.maybeWhen(
          singOut: () {
            context.router.navigate(const LoginRoute());
          },
          orElse: () {},
        );
      },
      builder: (context, state) {
        return Drawer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(
                    height: 180,
                    width: double.infinity,
                    color: const Color(0xFF7D4848),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 15, top: 30),
                          child: Icon(
                            Icons.account_circle_rounded,
                            size: 80,
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 15),
                          child: Text(
                            '${_user?.email}',
                            style: Style.montserrat18w400,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(height: 1, color: Colors.grey.shade200),
                  ListTile(
                    leading: Icon(CupertinoIcons.news_solid, size: 25, color: Colors.grey.shade600),
                    title: const Text(
                      'Новости',
                      style: Style.montserrat20w400,
                    ),
                    onTap: () {
                      context.router.pop();
                    },
                  ),
                  Container(height: 1, color: Colors.grey.shade200),
                  ListTile(
                    leading: Icon(CupertinoIcons.cart_fill, size: 25, color: Colors.grey.shade600),
                    title: const Text(
                      'Корзина',
                      style: Style.montserrat20w400,
                    ),
                    onTap: () {
                      context.router.pop();
                    },
                  ),
                  Container(height: 1, color: Colors.grey.shade200),
                  ListTile(
                    leading: Icon(CupertinoIcons.square_favorites_fill,
                        size: 25, color: Colors.grey.shade600),
                    title: const Text(
                      'О нас',
                      style: Style.montserrat20w400,
                    ),
                    onTap: () {
                      context.router.pop();
                    },
                  ),
                  Container(height: 1, color: Colors.grey.shade200),
                  ListTile(
                    leading: Icon(CupertinoIcons.phone_fill, size: 25, color: Colors.grey.shade600),
                    title: const Text(
                      'Контакты',
                      style: Style.montserrat20w400,
                    ),
                    onTap: () {
                      context.router.pop();
                    },
                  ),
                  Container(height: 1, color: Colors.grey.shade200),
                ],
              ),
              _buildLogoutButton(context),
            ],
          ),
        );
      },
    );
  }

  Widget _buildLogoutButton(BuildContext context) {
    return Column(
      children: [
        Container(height: 1, color: Colors.grey.shade200),
        ListTile(
          title: Text(
            'Выйти',
            style: Style.montserrat16w400.copyWith(color: Colors.red),
          ),
          onTap: () => _cubit.singOut(),
        ),
      ],
    );
  }
}
