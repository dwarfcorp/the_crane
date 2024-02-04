import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Scaffold(
          appBar: AppBar(
            title: Container(
                alignment: Alignment.center,
                width: 250,
                child: SvgPicture.asset(
                  '../assets/logo.svg',
                  height: 150,
                  width: 150,
                )),
            actions: [
              Container(
                  margin: EdgeInsets.all(10),
                  child: ElevatedButton(
                      onPressed: () {}, child: Text("Servicios"))),
              Container(
                  margin: EdgeInsets.all(10),
                  child: ElevatedButton(
                      onPressed: () {}, child: Text("Nuestro trabajo"))),
              Container(
                  margin: EdgeInsets.all(10),
                  child: ElevatedButton(
                      onPressed: () {}, child: Text("Registrarse"))),
              Container(
                  margin: EdgeInsets.all(10),
                  child: ElevatedButton(
                      onPressed: () {}, child: Text("Iniciar sesion"))),
            ],
          ),
          body: ListView(
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Text("¿Nos necesitas?"),
                        Text("No importa hora, lugar o clima; ¡Ahi estaremos!"),
                        SizedBox(
                          height: 50,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                              onPressed: (() {}),
                              child: Text("Contactanos por wpp"),
                            ),
                            ElevatedButton(
                              onPressed: (() {}),
                              child: Container(
                                child: Text("Solicitar un servicio"),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      flex: 1, child: Lottie.asset('../assets/lottie.json')),
                ],
              ),
              Container(height: 400, color: Colors.purple),
              Container(
                height: 400,
                color: Colors.blue,
              ),
            ],
          )),
    );
  }
}
