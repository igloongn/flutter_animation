import 'package:flutter/material.dart';

class Third extends StatefulWidget {
  const Third({super.key});

  @override
  State<Third> createState() => _ThirdState();
}

class _ThirdState extends State<Third> {
  bool _isExpanded = false;
  bool _isPositioned = false;

  void _toggleExpanded() => setState(() {
        _isExpanded = !_isExpanded;
        _isPositioned = !_isPositioned;
      });

  double _slidervalue = 0.1;
  void changeValue(newvalue) => setState(() => _slidervalue = newvalue);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animate with Slider'),
        centerTitle: true,
      ),
      body: GestureDetector(
        onTap: _toggleExpanded,
        child: Stack(
          alignment: AlignmentDirectional.topStart,
          children: [
            SizedBox(height: 30),
            Slider(
              value: _slidervalue,
              onChanged: (value) => setState(() {
                _slidervalue = value;
                print(value);
              }),
            ),
            SizedBox(height: 30),
            AnimatedContainer(
                duration: Duration(milliseconds: 200),
                width: _slidervalue * 1000,
                height: _slidervalue * 1000,
                color: Colors.black)
          ],
        ),
      ),
    );
  }
}
