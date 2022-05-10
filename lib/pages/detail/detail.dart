import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String url, titulo, subtitulo;

  const DetailPage({
    Key? key,
    required this.url,
    required this.titulo,
    required this.subtitulo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detail Page')),
      body: ListView(
        children: [
          Text(titulo, style: Theme.of(context).textTheme.displayMedium),
          Image.network(
            url,
            height: MediaQuery.of(context).size.height * .5,
            fit: BoxFit.cover,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child:
                Text(subtitulo, style: Theme.of(context).textTheme.bodyMedium),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque rhoncus ut lorem id interdum. Etiam tincidunt at orci vel sollicitudin. Integer molestie accumsan tincidunt. Cras in dui dolor. Morbi sit amet euismod diam. Phasellus placerat elit porta ligula sagittis, id imperdiet ligula ultrices.  ',
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: const Icon(Icons.favorite),
        onPressed: () {},
        label: const Text('Cutir'),
      ),
    );
  }
}
