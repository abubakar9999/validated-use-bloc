import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:validate_form_with_bloc/screen/bloc/singin_bloc.dart';
import 'package:validate_form_with_bloc/screen/bloc/singin_event.dart';
import 'package:validate_form_with_bloc/screen/bloc/singin_state.dart';

class SingIN extends StatelessWidget {
  SingIN({Key? key}) : super(key: key);
  TextEditingController pass = TextEditingController();
  TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            BlocBuilder<SinginBloc, SinginState>(
              builder: (context, state) {
                if (state is SinInErrorState) {
                  return Text(
                    state.errorMassage,
                    style: TextStyle(fontSize: 20, color: Colors.red),
                  );
                } else {
                  return Container();
                }
              },
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              onChanged: ((value) {
                BlocProvider.of<SinginBloc>(context).add(SingInTextEvent(pass.text,email.text));
              }),
              controller: email,
              decoration: InputDecoration(hintText: "Enter your Email"),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
             onChanged: ((value) {
                BlocProvider.of<SinginBloc>(context).add(SingInTextEvent(pass.text,email.text));
              }),
              controller: pass,
              decoration: InputDecoration(hintText: "Enter your password"),
            ),
            SizedBox(
              height: 10,
            ),
            BlocBuilder<SinginBloc, SinginState>(
              builder: (context, state) {
                return MaterialButton(
                  color: state is SinginValedeSate?Colors.green:Colors.red,
                  onPressed: () {},
                  child: Text("submit"),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
