import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
// TODO: implement build
    return MaterialApp(
      title: 'Aprendiendo PopMenuButtom',
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: Principal(),
    );
  }
}

class Principal extends StatefulWidget {
  @override
  _Principal createState() => _Principal();
}

class _Principal extends State<Principal> {
  Object? _value = '';

  @override
  Widget build(BuildContext context) {
// TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('popMenuButton'),
          actions: [
            PopupMenuButton(
                onSelected: (value) {
                  setState(() {
                    _value = value;
                  });
                },
                itemBuilder: (context) => [
                      PopupMenuItem(
                        child: Text(
                          'primero',
                        ),
                        value: 'elegiste el primero Cachimbo',
                      ),
                      PopupMenuItem(
                        child: Text('segundo'),
                        value: 'elegiste el segundo cachimbo',
                      ),
                    ])
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(_value.toString(), style: TextStyle(fontSize: 30)),
            ],
          ),
        ));
  }
}
