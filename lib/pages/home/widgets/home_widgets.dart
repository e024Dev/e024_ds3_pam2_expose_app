import 'package:e024_ds3_pam2_expose_app/pages/detail/detail.dart';
import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  final String url;
  final String titulo, subtitulo;

  const HomeCard(
      {Key? key,
      required this.url,
      required this.titulo,
      required this.subtitulo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => DetailPage(
                  url: url,
                  titulo: titulo,
                  subtitulo: subtitulo,
                )));
      },
      child: Card(
        clipBehavior: Clip.antiAlias,
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: Column(
          children: [
            Image.network(
              url,
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListTile(
                title: Text(titulo),
                subtitle: Text(subtitulo),
                leading: const Icon(Icons.favorite),
                trailing: const Icon(Icons.arrow_forward),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ListCards extends StatelessWidget {
  final int quantidade;

  const ListCards({Key? key, required this.quantidade}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var url =
        'https://images.pexels.com/photos/206359/pexels-photo-206359.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260';
    return ListView.builder(
      itemCount: quantidade,
      itemBuilder: (context, index) => HomeCard(
        url: url,
        titulo: 'Titulo Card ${index + 1}',
        subtitulo: 'Conteúdo do Card ${index + 1}',
      ),
    );
  }
}
