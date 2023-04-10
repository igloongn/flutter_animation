import 'package:flutter/material.dart';
import 'package:flutter_team/animations/first.dart';
import 'package:flutter_team/animations/third.dart';

class Second extends StatefulWidget {
  const Second({super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text('Screen 1'),
    Text('Screen 2'),
    Text('Screen 3'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    Navigator.pop(context); // Close the drawer
  }

  void moveTo(Widget widget) => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => widget),
      );

  Tween<double> myTween = Tween<double>(begin: 0, end: 2);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Tween Animation Builder'),
          centerTitle: true,
          actions: <Widget>[
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/'),
              child: Icon(
                Icons.home,
                color: Colors.pink[900],
                size: 40,
              ),
            )
          ]),
      body: Center(
        child: Column(
          children: [
            const Text('My First Trial'),
            const SizedBox(height: 30.0),
            ElevatedButton(
              onPressed: () {
                debugPrint('James');
                setState(() {
                  // isClicked = !isClicked;
                });
              },
              child: const Text('Click Me'),
            ),
            const SizedBox(height: 30.0),
            TweenAnimationBuilder(
              tween: myTween,
              duration: const Duration(seconds: 2),
              child: Container(
                width: 200,
                height: 200,
                color: Colors.blue[700],
              ),
              builder: (_, data, child) => Transform.rotate(
                angle: data,
                child: child,
              ),
              // builder: (_, data, __)=> ,
            )
          ],
        ),
      ),
    );
  }
}
