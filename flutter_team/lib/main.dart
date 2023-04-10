import 'package:flutter/material.dart';
import 'package:flutter_team/animations/first.dart';
import 'package:flutter_team/animations/second.dart';
import 'package:flutter_team/animations/third.dart';
import 'package:flutter_team/screens/fourth.dart';

void main() => runApp(MaterialApp(
      title: 'Flutter Animation Team',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const Fourth(),
        '/first': (context) => const First(),
        '/second': (context) => const Second(),
        '/third': (context) => const Third(),
        '/fourth': (context) => const Fourth(),
      },
    ));
