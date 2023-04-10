import 'package:flutter/material.dart';

class First extends StatefulWidget {
  const First({Key? key}) : super(key: key);

  @override
  _FirstState createState() => _FirstState();
}

class _FirstState extends State<First> {
  bool _isExpanded = false;
  bool _isPositioned = false;

  void _toggleExpanded() {
    setState(() {
      _isExpanded = !_isExpanded;
      _isPositioned = !_isPositioned;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container and Positioned'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Headexr'),
            ),
            ListTile(
              title: const Text('First'),
              onTap: () {
                Navigator.pushNamed(context, '/first');
              },
            ),
            ListTile(
              title: const Text('Second'),
              onTap: () {
                Navigator.pushNamed(context, '/second');
              },
            ),
            ListTile(
              title: const Text('Third'),
              onTap: () {
                Navigator.pushNamed(context, '/third');
              },
            ),
            ListTile(
              title: const Text('Fourth'),
              onTap: () {
                Navigator.pushNamed(context, '/fourth');
              },
            ),
          ],
        ),
      ),
      body: GestureDetector(
        onTap: _toggleExpanded,
        child: Stack(
          children: [
            AnimatedContainer(
              duration: const Duration(seconds: 1),
              curve: Curves.easeInOut,
              width: _isExpanded ? 200 : 100,
              height: _isExpanded ? 200 : 100,
              color: _isExpanded ? Colors.blue : Colors.red,
            ),
            AnimatedPositioned(
              duration: const Duration(seconds: 1),
              curve: Curves.easeInOut,
              top: _isPositioned ? 100 : 0,
              left: _isPositioned ? 100 : 0,
              child: Container(
                width: 50,
                height: 50,
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
