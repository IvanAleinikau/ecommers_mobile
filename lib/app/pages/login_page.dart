import 'package:ecommers_mobile/app/message/message.dart';
import 'package:ecommers_mobile/app/theme/text_style.dart';
import 'package:ecommers_mobile/app/widgets/auth_widgets/auth_input.dart';
import 'package:ecommers_mobile/app/widgets/auth_widgets/auth_navigator.dart';
import 'package:ecommers_mobile/app/widgets/auth_widgets/auth_space.dart';
import 'package:ecommers_mobile/app/widgets/auth_widgets/auth_subtitle.dart';
import 'package:ecommers_mobile/app/widgets/auth_widgets/auth_title.dart';
import 'package:ecommers_mobile/app/widgets/auth_widgets/google_button.dart';
import 'package:ecommers_mobile/app/widgets/auth_widgets/sign_in_button.dart';
import 'package:ecommers_mobile/core/blocs/login_bloc/login_cubit.dart';
import 'package:ecommers_mobile/core/blocs/login_bloc/login_state.dart';
import 'package:ecommers_mobile/core/router/router.gr.dart';
import 'package:ecommers_mobile/core/utils/validator.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  final ValueNotifier<bool> _isLoading = ValueNotifier<bool>(false);

  final LoginCubit _cubit = LoginCubit();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: BlocConsumer<LoginCubit, LoginState>(
          bloc: _cubit,
          listener: (context, state) {
            state.maybeWhen(
              successfully: () => context.router.replace(const MainRoute()),
              loading: () => _isLoading.value = true,
              error: (String message) {
                _isLoading.value = false;
                showErrorAuthMessage(message: message, context: context);
              },
              orElse: () => _isLoading.value = false,
            );
          },
          builder: (context, state) {
            return ValueListenableBuilder(
              valueListenable: _isLoading,
              builder: (context, bool isLoading, child) {
                return isLoading ? const CircularProgressIndicator() : _buildBody(context);
              },
            );
          },
        ),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 80),
          const AuthTitle(
            title: 'Vinyl Collection',
            padding: EdgeInsets.zero,
            style: Style.authTitle,
          ),
          const SizedBox(height: 10),
          const AuthSubtitle(
            subtitle: 'Добро пожаловать в Vinyl Collection',
            padding: EdgeInsets.zero,
            style: Style.authSubtitle,
          ),
          const SizedBox(height: 40),
          Form(
            key: _formKey,
            child: AuthSpace(
              widgets: [
                AuthInput(
                  hintText: 'Введите почту',
                  labelText: 'Почта',
                  padding: const EdgeInsets.symmetric(horizontal: 70),
                  controller: _email,
                  validator: (value) => Validator.validateEmail(value!),
                  obscureText: false,
                ),
                const SizedBox(height: 10),
                AuthInput(
                  hintText: 'Введите пароль',
                  labelText: 'Пароль',
                  padding: const EdgeInsets.symmetric(horizontal: 70),
                  controller: _password,
                  validator: (value) => Validator.validateNotNull(value!),
                  obscureText: true,
                ),
                const SizedBox(height: 40),
                SignInButton(
                  text: 'Войти',
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _cubit.onSingIn(email: _email.text, password: _password.text);
                    }
                  },
                  padding: EdgeInsets.zero,
                ),
                const SizedBox(height: 10),
                GoogleButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {}, //_cubit.onSingInWithGoogle(),
                  text: 'Sing in with Google',
                ),
                const SizedBox(height: 40),
                AuthNavigator(
                  text: 'Ещё не зарегистрированы?',
                  buttonText: 'Создать аккаунт',
                  onPressed: () => context.router.navigate(const RegisterRoute()),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
