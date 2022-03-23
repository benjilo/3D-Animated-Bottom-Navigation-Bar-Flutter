import 'package:flutter/material.dart';
import 'package:flutterapp/3dpackage/flip_box_bar.dart';

void main() {
  runApp(animatedbar());
}

class animatedbar extends StatelessWidget {
  const animatedbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '3D Animated Navigation Bar',
      home: barpage(),
    );
  }
}

class barpage extends StatefulWidget {
  const barpage({Key? key}) : super(key: key);

  @override
  State<barpage> createState() => _barpageState();
}

class _barpageState extends State<barpage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('3D Animated Navigation Bar'),
      ),
      bottomNavigationBar: FlipBoxBar(
        selectedIndex: selectedIndex,
        items: [
          FlipBarItem(
              icon: Icon(Icons.map),
              text: Text('Map'),
              frontColor: Colors.blue,
              backColor: Colors.blueAccent),
          FlipBarItem(
              icon: Icon(Icons.add),
              text: Text('Add'),
              frontColor: Colors.cyan,
              backColor: Colors.cyanAccent),
          FlipBarItem(
              icon: Icon(Icons.chrome_reader_mode),
              text: Text('Read'),
              frontColor: Colors.orange,
              backColor: Colors.orangeAccent),
          FlipBarItem(
              icon: Icon(Icons.chat),
              text: Text('Chat'),
              frontColor: Colors.pink,
              backColor: Colors.pinkAccent),
          FlipBarItem(
              icon: Icon(Icons.ac_unit),
              text: Text('Unit'),
              frontColor: Colors.purple,
              backColor: Colors.purpleAccent),
        ],
        onIndexChanged: (newIndex) {
          setState(() {
            selectedIndex = newIndex;
          });
        },
      ),
    );
  }
}
