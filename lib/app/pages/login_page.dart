import 'package:ecommers_mobile/core/blocs/login_bloc/login_cubit.dart';
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
    return const Scaffold(
      body: Center(
        child: Text('LOgin'),
      ),
    );
    // return Scaffold(
    //   body: BlocConsumer<LoginCubit, LoginState>(
    //     bloc: _cubit,
    //     listener: (BuildContext context, state) {
    //       state.maybeWhen(
    //         successfully: () => context.router.replace(const MainRoute()),
    //         loading: () => _isLoading.value = true,
    //         error: (String message) {
    //           _isLoading.value = false;
    //           showErrorAuthMessage(message: message, context: context);
    //         },
    //         orElse: () {},
    //       );
    //     },
    //     builder: (BuildContext context, state) {
    //       return Column(
    //         children: [
    //           ValueListenableBuilder(
    //             valueListenable: _isLoading,
    //             builder: (context, bool isLoading, child) {
    //               return isLoading ? const LinearProgressIndicator() : const EmptyWidget();
    //             },
    //           ),
    //           Expanded(
    //             child: Container(
    //               decoration: const BoxDecoration(color: ColorPalette.authBackground),
    //               padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 200),
    //               child: Row(
    //                 children: [
    //                   const Expanded(
    //                     flex: 1,
    //                     child: AuthImage(),
    //                   ),
    //                   Expanded(
    //                     flex: 1,
    //                     child: Form(
    //                       key: _formKey,
    //                       child: AuthSpace(
    //                         widgets: [
    //                           const AuthTitle(
    //                             title: 'Vinyl Collection',
    //                             padding: EdgeInsets.fromLTRB(0, 30, 0, 10),
    //                             style: Style.authTitle,
    //                           ),
    //                           const AuthSubtitle(
    //                             subtitle: 'Добро пожаловать в Vinyl Collection',
    //                             padding: EdgeInsets.only(bottom: 7),
    //                             style: Style.authSubtitle,
    //                           ),
    //                           AuthInput(
    //                             hintText: 'Введите почту',
    //                             labelText: 'Почта',
    //                             padding: const EdgeInsets.fromLTRB(150, 30, 150, 0),
    //                             controller: _email,
    //                             validator: (value) => Validator.validateEmail(value!),
    //                             obscureText: false,
    //                           ),
    //                           AuthInput(
    //                             hintText: 'Введите пароль',
    //                             labelText: 'Пароль',
    //                             padding: const EdgeInsets.fromLTRB(150, 25, 150, 0),
    //                             controller: _password,
    //                             validator: (value) => Validator.validateNotNull(value!),
    //                             obscureText: true,
    //                           ),
    //                           SignInButton(
    //                             text: 'Войти',
    //                             onPressed: () {
    //                               if (_formKey.currentState!.validate()) {
    //                                 _cubit.onSingIn(email: _email.text, password: _password.text);
    //                               }
    //                             },
    //                             padding: const EdgeInsets.fromLTRB(20, 30, 20, 25),
    //                           ),
    //                           const ButtonSeparator(),
    //                           GoogleButton(
    //                             padding: const EdgeInsets.fromLTRB(30, 15, 0, 15),
    //                             onPressed: () => _cubit.onSingInWithGoogle(),
    //                             text: 'Sing in with Google',
    //                           ),
    //                           AuthNavigator(
    //                             text: 'Ещё не зарегистрированы?',
    //                             buttonText: 'Создать аккаунт',
    //                             onPressed: () => context.router.navigate(const RegisterRoute()),
    //                           ),
    //                         ],
    //                       ),
    //                     ),
    //                   ),
    //                 ],
    //               ),
    //             ),
    //           ),
    //         ],
    //       );
    //     },
    //   ),
    // );
  }
}
