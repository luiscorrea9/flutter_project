import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const User(),
    );
  }
}

class User extends StatelessWidget {
  const User({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Stacks")),
        body: Stack(
          children: [
            Positioned(
              top: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 300,
                color: Colors.blue,
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image(
                      image: AssetImage('assets/avatar.png'),
                      width: 60,
                      height: 60,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 150,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 227, 225, 225),
                    borderRadius: BorderRadius.circular(30)),
              ),
            ),
            const Positioned(
                top: 70,
                left: 20,
                child: Text("Hola Pedro",
                    style:
                        TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white))),
             const Positioned(
                top: 110,
                left: 20,
                child: Text("La app del programador",
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white))),
            const Positioned(
                top: 190,
                left: 20,
                child: Text("Topicos Populares",
                    style:
                        TextStyle(fontSize: 22, fontWeight: FontWeight.bold))),
            Positioned(
              top: 210,
              child: Container(
                padding: const EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      lenguajes("JS", "Post 20", Colors.purple),
                      lenguajes("Css", "Post 17", Colors.blue),
                      lenguajes("Java", "Post 12", Colors.yellow),
                      lenguajes("Html", "Post 15", Colors.green),
                      lenguajes("Nest", "Post 19", Colors.pink),
                      lenguajes("Flutter", "Post 25", Colors.deepPurple),
                      lenguajes("Node", "Post 9", Colors.deepOrange),
                      lenguajes("Python", "Post 11", Colors.red),
                    ],
                  ),
                ),
              ),
            ),
            const Positioned(
                top: 430,
                left: 20,
                child: Text("Tendencias",
                    style:
                        TextStyle(fontSize: 22, fontWeight: FontWeight.bold))),
            Positioned(
                top: 450,
                child: Container(
                  width: MediaQuery.of(context).size.width,

                  padding: const EdgeInsets.all(20),

                  height: 500,

                  // color: Colors.red,

                  child: ListView(
                    children: [
                      movimiento(
                          "Miguel Perez",
                          "Java es un lenguaje de programación ampliamente utilizado para codificar aplicaciones web. Ha sido una opción popular entre los desarrolladores durante más de dos décadas, con millones de aplicaciones Java en uso en la actualidad.",
                          100, "Hace 1 hora", 200),
                      movimiento(
                          "Mirna Fonseca",
                          "JavaScript es un lenguaje de programación o de secuencias de comandos que te permite implementar funciones complejas en páginas web. ",
                          300, "Hace 2 horas",320),
                      movimiento(
                          "Luis Correa",
                          "Nest.js es un framework de JavaScript ligero y potente que se centra en la productividad y el rendimiento de los desarrolladores.",
                          440, "hace 5 horas",530),
                      movimiento(
                          "Sebastian Romero",
                          "Python es un lenguaje sencillo de leer y escribir debido a su alta similitud con el lenguaje humano ",
                          560, "hace 10 horas",800),
                    ],
                  ),
                ))
          ],
        ));
  }

  Widget texto(String titulo, double tam) {
    return Text(
      titulo,
      style: TextStyle(
          color: Colors.white, fontSize: tam, fontWeight: FontWeight.bold),
    );
  }

  Widget movimiento(String nombre, String descripcion, double valor, String time, double vistos) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(bottom: 20),
      height: 200,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(30)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children:  [
              const Image(
                image: AssetImage('assets/avatar.png'),
                width: 60,
                height: 60,
              ),
              Column(
                children: [Text(nombre), Text(time)],
              )
            ],
          ),
          Text(
            descripcion,
            style: TextStyle(color: Colors.black),
          ),
          Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween, 
  children: [
    Row(
      children: [
        const Icon(
          Icons.thumb_up_alt_rounded,
          size: 20,
        ),
        Text("$valor likes"),
      ],
    ),
    Row(
      children: [
        const Icon(
          Icons.remove_red_eye_outlined,
          size: 20,
        ),
        Text("$vistos vistos"),
      ],
    ),
  ],
)

        ],
      ),
    );
  }

  Widget lenguajes(String titulos, String publicados, Color color) {
    return Container(
        padding: const EdgeInsets.all(50),
        margin: const EdgeInsets.only(right: 10),
        width: 200,
        height: 190,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(20)),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(titulos,
                  style: TextStyle(color: Colors.white, fontSize: 30)),
              Text(publicados, style: TextStyle(color: Colors.white))
            ]));
  }
}
