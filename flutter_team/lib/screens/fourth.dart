import 'package:flutter/material.dart';

class Fourth extends StatefulWidget {
  const Fourth({super.key});

  @override
  State<Fourth> createState() => _FourthState();
}

class _FourthState extends State<Fourth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Input'),
        centerTitle: true,
        shadowColor: Colors.red[900],
      ),
      body: GestureDetector(
        onTap: () {},
        child: Container(
            width: double.infinity,
            color: Colors.grey[300],
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SizedBox(height: 30),
                Text('Text Input'),
                SizedBox(height: 30),
                TextField(
                  cursorColor: Colors.red,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    label: Text('Username'),
                    labelStyle: TextStyle(color: Colors.black),
                  ),
                ),
                TextField(
                    cursorColor: Colors.red,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      label: Text('Password'),
                    )),
              ],
            )),
      ),
    );
  }
}
