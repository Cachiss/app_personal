import 'package:flutter/material.dart';

// widgets
import 'package:app_personal/widgets/bottom_bar.dart';

//librerias
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Row(children: [
                Expanded(
                  flex: 5,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.all(10),
                    child: const CircleAvatar(
                      radius: 100,
                      backgroundImage: AssetImage('assets/images/marcos.jpeg'),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Column(children: [
                    const Text(
                      'Marcos Camacho',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      'Desarrollador web trainee',
                      style: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.normal),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      alignment: Alignment.topLeft,
                      child: Row(children: [
                        IconButton(
                          icon: Icon(FeatherIcons.github),
                          onPressed: () async {
                            const url = 'https://github.com/cachiss';
                            try {
                              await launch(url);
                            } catch (e) {
                              throw 'No se puede abrir $url';
                            }
                          },
                        ),
                        IconButton(
                          icon: Icon(FeatherIcons.linkedin),
                          onPressed: () async {
                            const url =
                                'https://www.linkedin.com/in/marcos-jesus-camacho-ram%C3%ADrez-223604217/';
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              throw 'No se puede abrir $url';
                            }
                          },
                        ),
                        IconButton(
                          icon: Icon(FeatherIcons.twitter),
                          onPressed: () async {
                            const url = 'https://twitter.com/marcoscachis';
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              throw 'No se puede abrir $url';
                            }
                          },
                        ),
                      ]),
                    )
                  ]),
                )
              ]),
              Container(
                margin: const EdgeInsets.all(20),
                child: const Divider(
                  color: Colors.black,
                  thickness: 5,
                ),
              ),
              Container(
                margin: const EdgeInsets.all(5),
                child: Column(children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                        'Un poco sobre mí...'),
                  ),
                  Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: Column(
                        children: [
                          const Text(
                            'Soy un estudiante en la Universidad Tecnológica de San Juan del río en Desarrollo de Software, estoy en busca de oportunidades laborales que me hagan probar mis habilidades en el mundo de la programación web.',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.normal),
                          ),
                          Container(
                              margin: const EdgeInsets.only(top: 5),
                              child: const Text(
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal),
                                  '\n Empecé en la programación cuando me enfrente al dilema de elegir una carrera para la posteridad, cosa que al principio era poco estimulante para mí, sin embargo cuando tuve mis primeros acercamientos a la programación web, supe que definitivamente esto es algo a lo que dedicaría gran parte de mi vida. Desde entonces no he parado de alimentarme de información de manera autodidacta para darme un espacio en el campo TI.')),
                          Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 5),
                                    alignment: Alignment.centerLeft,
                                    child: const Text(
                                        style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold),
                                        'Mis metas profesionales'),
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(top: 5),
                                      child: const Text(
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.normal),
                                          'Mi mayor experencia en el campo de la programación web es en la parte del frontend, específicamente con la tecnología de React. Mi stack es el MERN (MongoDB, Express, React, NodeJS, pero estoy abierto a salir de mi zona de confort para probar nuevas tecnologías.'))
                                ],
                              ))
                        ],
                      ))
                ]),
              )
            ],
          )),
    );
  }
}
