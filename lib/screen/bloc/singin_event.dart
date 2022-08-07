


abstract class SinginEvent {}
class SingInTextEvent extends SinginEvent{
 final String emailvalue;
  final String passvalue;
  SingInTextEvent(this.emailvalue,this.passvalue);
}

class SingInButtonEvent extends SinginEvent{
 final String email;
  final String pass;
  SingInButtonEvent(this.email,this.pass);

  
}
