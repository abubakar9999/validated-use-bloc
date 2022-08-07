
import 'package:email_validator/email_validator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:validate_form_with_bloc/screen/bloc/singin_event.dart';
import 'package:validate_form_with_bloc/screen/bloc/singin_state.dart';





class SinginBloc extends Bloc<SinginEvent, SinginState> {
  SinginBloc() : super(SinginInitial()) {
    on<SingInTextEvent>((event, emit) {
        if(event.emailvalue=="" && EmailValidator.validate(event.emailvalue)==false){
        emit(SinInErrorState("Enter your validate email & pass"));
      }else if(event.passvalue.length<5){
        emit(SinInErrorState("Enter your validate email & pass"));

      }
      else{ 
        emit(SinginValedeSate());
      }
    });
    on<SingInButtonEvent>((event, emit) {
      emit(SingInLodingState());
    
      
    });
  }
}
