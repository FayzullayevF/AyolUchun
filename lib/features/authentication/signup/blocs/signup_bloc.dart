import 'package:ayol_uchun/features/authentication/signup/blocs/signup_event.dart';
import 'package:ayol_uchun/features/authentication/signup/blocs/signup_state.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

import '../../../../data/repositories/authentication/auth_repository.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final AuthRepository _repo;

  SignUpBloc({required AuthRepository repo}) : _repo = repo, super(SignUpState.initial()){
    on<SignUpLoad>(_onLoad);
  }

  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailNameController = TextEditingController();

  Future<void> _onLoad(SignUpEvent event, Emitter<SignUpState> emit) async {
    emit(state.copyWith(status: SignUpStatus.loading));
    try{
      final store = await _repo.signUp(firstName: firstNameController.text, lastName: lastNameController.text,email: emailNameController.text,);
      if(store){
        emit(state.copyWith(status: SignUpStatus.idle));
      }else{
        emit(state.copyWith(status: SignUpStatus.error));
      }
    }catch(e){
      emit(state.copyWith(status: SignUpStatus.error));
    }
  }
}
