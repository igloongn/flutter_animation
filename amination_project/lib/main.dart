import 'package:amination_project/screen/myanimatedcontainer.dart';
import 'package:amination_project/screen/mytween.dart';
import 'package:amination_project/screen/tween_pro.dart';
import 'package:flutter/material.dart';
import 'package:amination_project/screen/home.dart';

final myTheme = ThemeData(
  primarySwatch: Colors.green,
  fontFamily: 'Roboto',
  // useMaterial3: true,
);

void main() => runApp(MaterialApp(
      title: 'Animation',
      theme: myTheme,
      // initialRoute: '/anime',
      routes: {
        '/': (context) => TweenPro(title: 'Tween Pro'),
        '/tween': (context) => MyTween(title: 'Tweening lol'),
        '/anime': (context) => Anime(title: 'My animated'),
        '/home': (context) => Home(title: 'Home Screen'),
      },
    ));
