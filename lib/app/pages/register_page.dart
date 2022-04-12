// import 'package:ecommers/app/common/empty_widget.dart';
// import 'package:ecommers/app/message/message.dart';
// import 'package:ecommers/app/theme/color_palette.dart';
// import 'package:ecommers/app/theme/text_style.dart';
// import 'package:ecommers/app/widgets/auth_widgets/auth_image.dart';
// import 'package:ecommers/app/widgets/auth_widgets/auth_input.dart';
// import 'package:ecommers/app/widgets/auth_widgets/auth_navigator.dart';
// import 'package:ecommers/app/widgets/auth_widgets/auth_space.dart';
// import 'package:ecommers/app/widgets/auth_widgets/auth_subtitle.dart';
// import 'package:ecommers/app/widgets/auth_widgets/auth_title.dart';
// import 'package:ecommers/app/widgets/auth_widgets/sign_up_button.dart';
// import 'package:ecommers/core/blocs/register_bloc/register_cubit.dart';
// import 'package:ecommers/core/blocs/register_bloc/register_state.dart';
// import 'package:ecommers/core/router/router.gr.dart';
// import 'package:ecommers/core/utils/validator.dart';
// import 'package:flutter/material.dart';
// import 'package:auto_route/auto_route.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// class RegisterPage extends StatefulWidget {
//   const RegisterPage({Key? key}) : super(key: key);
//
//   @override
//   _RegisterPageState createState() => _RegisterPageState();
// }
//
// class _RegisterPageState extends State<RegisterPage> {
//   final _formKey = GlobalKey<FormState>();
//   final TextEditingController _email = TextEditingController();
//   final TextEditingController _password = TextEditingController();
//   final TextEditingController _confirmPassword = TextEditingController();
//
//   final ValueNotifier<bool> _isLoading = ValueNotifier<bool>(false);
//
//   final RegisterCubit _cubit = RegisterCubit();
//
//   @override
//   void initState() {
//     super.initState();
//   }
//
//   @override
//   void dispose() {
//     _email.dispose();
//     _password.dispose();
//     _confirmPassword.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: BlocConsumer<RegisterCubit, RegisterState>(
//         bloc: _cubit,
//         listener: (BuildContext context, state) {
//           state.maybeWhen(
//             successfully: () {
//               Future.delayed(const Duration(milliseconds: 1500), () {
//                 context.router.replace(const MainRoute());
//               });
//             },
//             loading: () => _isLoading.value = true,
//             error: (String message) {
//               _isLoading.value = false;
//               showErrorAuthMessage(message: message, context: context);
//             },
//             orElse: () {},
//           );
//         },
//         builder: (BuildContext context, state) {
//           return Column(
//             children: [
//               ValueListenableBuilder(
//                 valueListenable: _isLoading,
//                 builder: (context, bool isLoading, child) {
//                   return isLoading ? const LinearProgressIndicator() : const EmptyWidget();
//                 },
//               ),
//               Expanded(
//                 child: Container(
//                   decoration: const BoxDecoration(color: ColorPalette.authBackground),
//                   padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 200),
//                   child: Row(
//                     children: [
//                       const Expanded(
//                         flex: 1,
//                         child: AuthImage(),
//                       ),
//                       Expanded(
//                         flex: 1,
//                         child: Form(
//                           key: _formKey,
//                           child: AuthSpace(
//                             widgets: [
//                               const AuthTitle(
//                                 title: 'Vinyl Collection',
//                                 padding: EdgeInsets.fromLTRB(0, 25, 0, 5),
//                                 style: Style.authTitle,
//                               ),
//                               const AuthSubtitle(
//                                 subtitle: 'Добро пожаловать в Vinyl Collection',
//                                 padding: EdgeInsets.only(bottom: 7),
//                                 style: Style.authSubtitle,
//                               ),
//                               AuthInput(
//                                 hintText: 'Введите почту',
//                                 labelText: 'Почта',
//                                 padding: const EdgeInsets.fromLTRB(150, 25, 150, 0),
//                                 controller: _email,
//                                 validator: (value) => Validator.validateEmail(value!),
//                                 obscureText: false,
//                               ),
//                               AuthInput(
//                                 hintText: 'Введите пароль',
//                                 labelText: 'Пароль',
//                                 padding: const EdgeInsets.fromLTRB(150, 25, 150, 0),
//                                 controller: _password,
//                                 validator: (value) => Validator.validatePassword(value!),
//                                 obscureText: true,
//                               ),
//                               AuthInput(
//                                 hintText: 'Введите пароль',
//                                 labelText: 'Подтвердите пароль',
//                                 padding: const EdgeInsets.fromLTRB(150, 25, 150, 0),
//                                 controller: _confirmPassword,
//                                 validator: (value) => Validator.validateConfirmPassword(
//                                   password: _password.text,
//                                   confirmPassword: value!,
//                                 ),
//                                 obscureText: true,
//                               ),
//                               SignUpButton(
//                                 text: 'Зарегистрироваться',
//                                 onPressed: () {
//                                   if (_formKey.currentState!.validate()) {
//                                     _cubit.onRegister(
//                                       email: _email.text,
//                                       password: _password.text,
//                                     );
//                                   }
//                                 },
//                                 padding: const EdgeInsets.fromLTRB(20, 30, 20, 25),
//                               ),
//                               AuthNavigator(
//                                 text: 'Уже зарегистрированы?',
//                                 buttonText: 'Войти',
//                                 onPressed: () => context.router.navigate(const LoginRoute()),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           );
//         },
//       ),
//     );
//   }
// }
