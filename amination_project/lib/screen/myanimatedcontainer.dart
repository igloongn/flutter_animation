import 'package:flutter/material.dart';

class Anime extends StatefulWidget {
  final String title;
  const Anime({super.key, required this.title});

  @override
  State<Anime> createState() => _AnimeState();
}

class _AnimeState extends State<Anime> {
  double _width = 50.0;
  double _height = 50.0;
  Color color = Colors.grey;
  _addSize() => setState(() {
        _width += 20.0;
        _height += 20.0;
        color = Colors.green;
      });
  _minusSize() => setState(() {
        _width -= 20.0;
        _height -= 20.0;
        color = Colors.red;
      });
  _resetSize() => setState(() {
        _width = 50.0;
        _height = 50.0;
        color = Colors.grey;
      });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'AppBarScreen',
          ),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () => Navigator.of(context).pop(),
          ),
          automaticallyImplyLeading: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Text('First'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () => _addSize(),
                    child: Text('Add'),
                  ),
                  ElevatedButton(
                    onPressed: () => _resetSize(),
                    child: Text('Reset'),
                  ),
                  ElevatedButton(
                    onPressed: () => _minusSize(),
                    child: Text('Minus'),
                  ),
                ],
              ),
              AnimatedContainer(
                margin:
                    const EdgeInsets.symmetric(vertical: 30.0, horizontal: 0.0),
                duration: const Duration(milliseconds: 500),
                curve: Curves.elasticInOut,
                clipBehavior: Clip.antiAlias,
                width: _width,
                height: _height,
                color: color,
              ),
              const Text('Second'),
            ],
          ),
        ));
  }
}
