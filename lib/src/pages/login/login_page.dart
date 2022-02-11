import 'package:domicil_app_flutter/src/pages/login/login_controller.dart';
import 'package:domicil_app_flutter/src/widgets/button_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:domicil_app_flutter/src/utils/colors_app.dart' as utils;

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  LoginController _con = new LoginController();

  @override
  void initState() {
    super.initState();
    print('Init');

    SchedulerBinding.instance?.addPostFrameCallback((timeStamp) {
      _con.init(context);
      print('Metodo Schudel');
    });
  }

  @override
  Widget build(BuildContext context) {
    print('state build');
    return Scaffold(
        appBar: AppBar(), //barra superior con flecha de regreso.
        body: SingleChildScrollView(
          child: Column(
            children: [
              _banner(),
              _TextDescripcion(),
              _TextLogin(),
              SizedBox(height: MediaQuery.of(context).size.height * 0.1),
              _TextFieldEmail(),
              _TextFielPassword(),
              _bottonLogin(),
              _NotienesCuenta()
            ],
          ),
        ));
  }

  Widget _banner() {
    return ClipPath(
      clipper: WaveClipperTwo(),
      child: Container(
        color:
        utils.Colors.colorApp, //usa el color creado en la clase colors_app.
        height: MediaQuery.of(context).size.height * 0.30,
        child: Row(
          //crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              'assets/img/domicilApp/icono_nombre.jpeg',
              width: 200,
              height: 300,
            ),
            Text(
              "Rapidos Y Efctivos",
              style: TextStyle(fontFamily: 'Pacifico', fontSize: 25),
            )
          ],
        ),
      ),
    );
  }

  Widget _TextDescripcion() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
      child: Text(
        'Ingresa tus datos',
        style: TextStyle(
            color: Colors.black54, fontSize: 24, fontFamily: 'NimbusSans'),
      ),
    );
  }

  Widget _TextLogin() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
      child: Text(
        'LOGIN',
        style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontFamily: 'NimbusSans',
            fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _TextFieldEmail() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      child: TextField(
        controller: _con.emailcontroller,
        decoration:  InputDecoration(
          hintText: 'Digita tu Email',
          labelText: 'Correo Electronico',
          suffixIcon: Icon(
            Icons.email_outlined,
            color: Colors.black54,
          ),
        ),
      ),
    );
  }

  Widget _TextFielPassword() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      child: TextField(
        controller: _con.passwordcontroller,
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'Digita tu contraseña',
          labelText: 'Contraseña',
          suffixIcon: Icon(
            Icons.lock_open_outlined,
            color: Colors.black54,
          ),
        ),
      ),
    );
  }

  Widget _bottonLogin() {
    //print('boton');
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
        child: ButtonApp(onPressed: _con.LoginState));
  }

  Widget _NotienesCuenta() {
    return Container(
      margin: EdgeInsets.only(bottom: 50),
      child: Text(
        'No tienes Cuenta ?',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }


}
