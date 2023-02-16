import 'package:app_personal/widgets/card_libro_widget.dart';
import 'package:flutter/material.dart';

class HobbiesPage extends StatelessWidget {
  const HobbiesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(30),
        child: Column(children: [
          const Text(
              style: TextStyle(
                  fontSize: 35,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              'Mis aficiones'),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Column(
              children: [
                const Text(
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.normal),
                    'Mi principal pasatiempo es la literatura, me gusta leer clásicos, considero que la literatura es el arte en el que se revela el alma humana, no necesitamos tener una sensibilidad al oido, a la vista, o a los pequeños detalles que requieren otras artes. Si no solo nos valemos de nuestro raciocionio para expresar ideas que modificarán la historia de la humanidad, para revelar el sentir del hombre solitario, intentar aproximarse al sentido de la vida y un largo etcétera que no tiene fin mientras sigamos pensando.'),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: const Text(
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.normal),
                      'Es por eso que considero listar mis libros favoritos, para que puedan conocerme un poco más. '),
                ),
                Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: const LibroCard(
                              title: 'La insoportable levedad del ser',
                              url:
                                  'https://m.media-amazon.com/images/I/91vD6O44UtL.jpg'),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: const LibroCard(
                              title: 'La Caída',
                              url:
                                  'https://m.media-amazon.com/images/I/61ad5TXr7mL.jpg'),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: const LibroCard(
                              title: 'Crimen y Castigo',
                              url:
                                  'https://m.media-amazon.com/images/I/71TCfoC27vL.jpg'),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: const LibroCard(
                              title: 'Pedro Páramo',
                              url:
                                  'https://m.media-amazon.com/images/I/81uU0hkYqxL.jpg'),
                        )
                      ],
                    )),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
