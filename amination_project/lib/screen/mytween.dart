import 'package:flutter/material.dart';

class MyTween extends StatefulWidget {
  final String title;
  const MyTween({required this.title, super.key});

  @override
  State<MyTween> createState() => _MyTweenState();
}

class _MyTweenState extends State<MyTween> {
  final Tween<double> _scaleTween = Tween<double>(begin: 1, end: 30);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Text(
              'Hello Boy',
              style: TextStyle(fontSize: 60.0),
            ),
            TweenAnimationBuilder(
                tween: _scaleTween,
                duration: Duration(milliseconds: 5000),
                builder: (context, scale, child) =>
                    Transform.scale(scale: scale, child: child),
                child: Container(
                  width: 20.0,
                  height: 20.0,
                  color: Colors.blue,
                )),
            Text(
              widget.title,
              style: TextStyle(fontSize: 60.0),
            ),
          ],
        ));
  }
}
