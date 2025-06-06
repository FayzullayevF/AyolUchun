import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

import '../../../../data/repositories/authentication/auth_repository.dart';
import 'login_event.dart';
import 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState>{
  LoginBloc({required AuthRepository repo}): _repo = repo, super(LoginState.initial()){
    on<LoginLoad>(_onLoad);
  }
  final AuthRepository _repo;
  final phoneNumberController = TextEditingController();
  final passwordController = TextEditingController();

  Future<void> _onLoad(LoginEvent event, Emitter<LoginState> emit)async{
    emit(state.copyWith(status: LoginStatus.loading));
    try{
      final store = await _repo.login(phoneNumberController.text, passwordController.text);

      if(store){
      emit(state.copyWith(status: LoginStatus.idle));
      }else{
        emit(state.copyWith(status: LoginStatus.error));
      }
    }catch(e){
      emit(state.copyWith(status: LoginStatus.error));
    }
  }
}