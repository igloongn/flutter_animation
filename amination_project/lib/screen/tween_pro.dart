import 'dart:math';

import 'package:flutter/material.dart';

class TweenPro extends StatefulWidget {
  final String title;
  const TweenPro({required this.title, super.key});

  @override
  State<TweenPro> createState() => _TweenProState();
}

class _TweenProState extends State<TweenPro>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            const Text(
              'Tweening for Pros',
              style: TextStyle(fontSize: 30.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  child: Text('Once'),
                  onPressed: () {
                    setState(() {
                      _controller.forward();
                    });
                  },
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _controller.repeat();
                    });
                  },
                  child: Text('Repeat'),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _controller.stop();
                    });
                  },
                  child: Text('Stop'),
                ),
              ],
            ),
            AnimatedBuilder(
              animation: _controller,
              builder: (context, child) => Transform.rotate(
                angle: _controller.value * 6 * pi,
                child: child,
              ),
              child: Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.all(50.0),
                width: 150.0,
                height: 150.0,
                color: Colors.blue[600],
                child: Text('Animated'),
              ),
            )
          ],
        ));
  }
}
