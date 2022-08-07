


abstract class SinginState {}

class SinginInitial extends SinginState {}
class SinginValedeSate extends SinginState{}
class SinInErrorState extends SinginState{
 final String errorMassage;
  SinInErrorState(this.errorMassage);
}
class SingInLodingState extends SinginState{}