import 'dart:math';

import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

//Variable Animacion
  double value = 0;
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //Comienzo 
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  //Degradado de color del fondo
                  Colors.blue.shade500,//400
                  Colors.blue.shade100,//800
                  //Color.fromRGBO(50, 200, 120, 0.5),  Cambiar color a mi gusto
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
          ),

          //Menu
          SafeArea(
            child: Container(
              width: 200.0,
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  DrawerHeader(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 50.0,
                          backgroundImage: NetworkImage("assets/img_main.jpg"),// Poner imagen toa guapa
                        ),
                        SizedBox(height: 10.0),
                        Text("Usuario",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                          ),
                        ),
                      ],)
                    ),
                    //Letras Homo
                     Expanded(
                          child: ListView(
                            children: [
                              ListTile(
                                onTap: (){},
                                leading: Icon(
                                  Icons.home,
                                  color: Colors.white,
                                  ),
                                title: Text("Home", style: TextStyle(color: Colors.white)),
                              ),
                              ListTile(
                                onTap: (){},
                                leading: Icon(
                                  Icons.person,
                                  color: Colors.white,
                                  ),
                                title: Text("Perfil", style: TextStyle(color: Colors.white)),
                              ),
                              ListTile(
                                onTap: (){},
                                leading: Icon(
                                  Icons.settings,
                                  color: Colors.white,
                                  ),
                                title: Text("Configuracion", style: TextStyle(color: Colors.white)),
                              ),
                              ListTile(
                                onTap: (){},
                                leading: Icon(
                                  Icons.logout,
                                  color: Colors.white,
                                  ),
                                title: Text("Cerrar sesion", style: TextStyle(color: Colors.white)),
                              ),
                            ]
                          ),
                        ),
                ],
              ),
            ),
          ),

          ///Animaciones 
          TweenAnimationBuilder(
            tween: Tween<double>(begin:0,end:value),
             duration: Duration(milliseconds: 500),
              builder: (_,double val,__){
                return(
                  Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.identity()
                  ..setEntry(3, 2, 0.001)
                  ..setEntry(0, 3, 200 * val)
                  ..rotateY((pi/6)* val),
                  child: Scaffold(
                    appBar: AppBar(
                      title: Text("Audio Menu"),
                    ),
                    body: Center(
                      child: Text("Menu de audio"),
                      //Aqui se agrega un boton si se quieres
                      ),
                  ),
                  ));
              }),

              GestureDetector(

               onHorizontalDragUpdate: (e){
                 if (e.delta.dx > 0 ){
                   setState(() {
                     value = 1;
                   });
                 }
                 else{
                   setState(() {
                     value = 0;
                   });
                 }
               }
             
               //No deja entrar
               /* onTap: (){
                  setState(() {
                    value == 0 
                    ? value =1
                    : value =0;
                  });
                }, */
             )
        ],
      ),
    );
  }
}

////////////////////////////////////////////////////////////////////////

