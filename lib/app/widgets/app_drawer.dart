import 'package:auto_route/auto_route.dart';
import 'package:ecommers_mobile/app/theme/text_style.dart';
import 'package:ecommers_mobile/core/blocs/login_bloc/login_cubit.dart';
import 'package:ecommers_mobile/core/blocs/login_bloc/login_state.dart';
import 'package:ecommers_mobile/core/router/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  late LoginCubit _cubit;

  @override
  void initState() {
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
                    color: Colors.blue,
                    child: const Center(
                      child: Text('Drawer Header'),
                    ),
                  ),
                  ListTile(
                    title: const Text('Item 1'),
                    onTap: () {
                      context.router.pop();
                    },
                  ),
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
        Container(
          height: 1,
          color: Colors.grey.shade200,
        ),
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
