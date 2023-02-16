import 'package:flutter/material.dart';

class LibroCard extends StatelessWidget {
  final String title, url;

  const LibroCard({super.key, required this.title, required this.url});

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        margin: EdgeInsets.all(15),
        elevation: 10,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Column(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(10),
                child: Text(title,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ),
              Image(
                // Como queremos traer una imagen desde un url usamos NetworkImage
                image: NetworkImage(url),
              ),
            ],
          ),
        ));
  }
}
