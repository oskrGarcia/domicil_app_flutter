import 'package:flutter/material.dart';

class LoginController{

  BuildContext? context;

  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  Future? init(BuildContext context) {
    this.context = context;

  }

  void LoginState(){

    String email = emailcontroller.text;
    String password = passwordcontroller.text;
    String prueba= 'pueba login';

    print(prueba);
    print('email: $email');
    print('password : $password');

  }

}