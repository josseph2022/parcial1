import 'package:flutter/material.dart';

void main() {
  runApp(Parcial1());
}

class Parcial1 extends StatelessWidget {
  const Parcial1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ParcialETPS3',
      home: frm(),
    );
  }
}

class frm extends StatefulWidget {
  frm({Key? key}) : super(key: key);

  @override
  State<frm> createState() => _frmState();
}

class _frmState extends State<frm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: <Widget>[login()],
    ));
  }
}

Widget login() {
  return Container(
    decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTY-a11VOUQAdEoi03r-1ZC3N5L_jZbNkt7pw_3ywhqFOPpwJZd"))),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          titulo(),
          alumno1(),
          alumno2(),
          SizedBox(
            height: 5,
          ),
          Nombre(),
          Apellido(),
          usuario(),
          password(),
          Correo(),
          SizedBox(
            height: 5,
          ),
          botonIngresar(),
          SizedBox(
            height: 5,
          ),
          botonCancelar()
        ],
      ),
    ),
  );
}

Widget titulo() {
  return Text("Parcial I - ETPS3!",
      style:
          TextStyle(color: Color.fromARGB(255, 229, 14, 14), fontSize: 30.0));
}

Widget alumno1() {
  return Text("Reynaldo - 2545722010",
      style: TextStyle(color: Color.fromARGB(255, 228, 9, 9), fontSize: 15.0));
}

Widget alumno2() {
  return Text("Jose - 2562372014",
      style:
          TextStyle(color: Color.fromARGB(255, 238, 10, 10), fontSize: 15.0));
}

Widget Nombre() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 8),
    child: TextField(
      decoration: InputDecoration(
          icon: Icon(Icons.account_box_sharp),
          hintText: "Ingrese su nombre",
          fillColor: Color.fromARGB(255, 240, 5, 5),
          filled: true),
    ),
  );
}

Widget Apellido() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 8),
    child: TextField(
      decoration: InputDecoration(
          icon: Icon(Icons.account_box_sharp),
          hintText: "Ingrese su apellido",
          fillColor: Color.fromARGB(250, 238, 14, 10),
          filled: true),
    ),
  );
}

Widget usuario() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 6),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
          icon: Icon(Icons.person),
          hintText: "Ingrese su usuario",
          fillColor: Color.fromARGB(255, 202, 36, 24),
          filled: true),
    ),
  );
}

Widget password() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 6),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
          icon: Icon(Icons.security),
          hintText: "Ingrese su contraseña",
          fillColor: Color.fromARGB(253, 202, 24, 24),
          filled: true),
    ),
  );
}

Widget Correo() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 8),
    child: TextField(
      decoration: InputDecoration(
          icon: Icon(Icons.email),
          hintText: "Ingrese su correo",
          fillColor: Color.fromARGB(255, 202, 24, 24),
          filled: true),
    ),
  );
}

Widget botonIngresar() {
  return FlatButton(
      color: Colors.blueAccent,
      padding: EdgeInsets.symmetric(horizontal: 115, vertical: 10),
      onPressed: () {},
      child: Text(
        "Ingresar",
        style:
            TextStyle(fontSize: 14, color: Color.fromARGB(255, 255, 255, 255)),
      ));
}

Widget botonCancelar() {
  return FlatButton(
      color: Colors.red,
      padding: EdgeInsets.symmetric(horizontal: 115, vertical: 10),
      onPressed: () {},
      child: Text(
        "Cancelar",
        style: TextStyle(fontSize: 14, color: Color.fromARGB(255, 14, 14, 14)),
      ));
}
