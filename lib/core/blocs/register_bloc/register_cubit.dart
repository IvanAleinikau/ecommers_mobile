import 'package:ecommers_mobile/app/common/dictionary.dart';
import 'package:ecommers_mobile/core/blocs/register_bloc/register_state.dart';
import 'package:ecommers_mobile/data/repository/auth_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final _repository = GetIt.instance<AuthRepository>();

  RegisterCubit() : super(const RegisterState.initState()) {
    init();
  }

  void init() {}

  void onRegister({required String email, required String password}) async {
    emit(const RegisterState.loading());
    final result = await _repository.createAccount(email: email, password: password);
    if (result == accountCreated) {
      emit(const RegisterState.successfully());
    } else {
      emit(RegisterState.error(message: result));
    }
  }
}
