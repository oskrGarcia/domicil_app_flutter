import 'package:domicil_app_flutter/src/pages/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class HomePage extends StatelessWidget {
  HomeController _controller =
      new HomeController(); //trae el controlador con la logica

  @override
  Widget build(BuildContext context) {
    _controller.init(context); //inicializa en controlador de la logica

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Colors.red, Colors.purple, Colors.blue])),
          child: Column(
            children: [
              _banner(context),
              SizedBox(height: 50),
              _TipoUsuario('SELECCIONA TU ROL'),
              SizedBox(height: 30),
              _TipodeImagen(context, 'assets/img/domicilApp/SECRETARIABYN.png'),
              SizedBox(height: 20),
              _TipoUsuario('Oficina'),
              SizedBox(height: 30),
              _TipodeImagen(context, 'assets/img/domicilApp/MENSAJEROBYN.png'),
              SizedBox(height: 20),
              _TipoUsuario('Domiciliario')
            ],
          ),
        ),
      ),
    );
  }

  Widget _banner(BuildContext context) {
    return ClipPath(
      clipper: DiagonalPathClipperTwo(),
      child: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height * 0.30,
        child: Row(
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

  Widget _TipodeImagen(BuildContext context, String rutaImagen) {
    return GestureDetector(
      onTap: _controller.goToLoginPage,
      child: CircleAvatar(
        backgroundImage: AssetImage(rutaImagen),
        radius: 50,
        backgroundColor: Colors.grey[500],
      ),
    );
  }

  Widget _TipoUsuario(String string) {
    return Text(
      string,
      style: const TextStyle(
          color: Colors.white,
          fontSize: 25,
          fontFamily: 'ONEDAY',
          fontWeight: FontWeight.bold),
    );
  }
}
