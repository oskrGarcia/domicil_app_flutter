import 'package:domicil_app_flutter/src/pages/login/login_controller.dart';
import 'package:flutter/material.dart';

class ButtonApp extends StatelessWidget {
  Color ColorBoton;
  Color TextColor;
  String TextBoton;
  IconData icon;
  Function? onPressed;

  ButtonApp({
    this.TextBoton = 'Inicio de Sesion',
    this.ColorBoton = Colors.grey,
    this.TextColor = Colors.black,
    this.icon = Icons.arrow_forward_ios,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        onPressed;
        print('press');
      },
      color: ColorBoton,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
                height: 50,
                alignment: Alignment.center,
                child: Text(
                  TextBoton,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              height: 50,
              alignment: Alignment.centerRight,
              child: CircleAvatar(
                radius: 15,
                child: Icon(icon),
                backgroundColor: Colors.white,
              ),
            ),
          )
        ],
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    );
  }
}
