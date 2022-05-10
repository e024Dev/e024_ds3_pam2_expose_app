import 'package:e024_ds3_pam2_expose_app/pages/home/widgets/home_widgets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selecedIndex = 2;

  var screens = [
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.yellow,
    ),
    const ListCards(quantidade: 20)
  ];

  @override
  Widget build(BuildContext context) {
    const imageUrl =
        'https://images.pexels.com/photos/206359/pexels-photo-206359.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260';
    return Scaffold(
      appBar: AppBar(title: const Text('Educação on-line')),
      body: screens[_selecedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (position) {
          setState(() {
            _selecedIndex = position;
          });
        },
        currentIndex: _selecedIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Trabalhos'),
          BottomNavigationBarItem(icon: Icon(Icons.tune), label: 'Config'),
        ],
      ),
    );
  }
}
