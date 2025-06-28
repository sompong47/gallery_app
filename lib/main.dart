import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imageList = [
      'assets/images/000.jpg',
      'assets/images/001.jpg',
      'assets/images/002.jpg',
      'assets/images/003.jpg',
      'assets/images/004.jpg',
      'assets/images/005.jpg',
      'assets/images/006.jpg',
      'assets/images/007.jpg',
      'assets/images/008.jpg',
      'assets/images/009.jpg',
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Gallery MY_Godji',
            style: TextStyle(
              color: Color.fromRGBO(247, 247, 247, 1),
              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontFamily: 'dancingScript',
            ),
          ),
          backgroundColor: Color.fromARGB(255, 0, 102, 9),
        ),
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: imageList.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              color: Colors.deepPurpleAccent,
              child: Center(child: Image.asset(imageList[index])),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.home, size: 40),
            Icon(Icons.search, size: 40),
            Icon(Icons.notifications, size: 40),
            Icon(Icons.person, size: 40),
          ],
        ),
      ),
    );
  }
}