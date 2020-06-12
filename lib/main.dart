import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Input Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController controllerOne = new TextEditingController();
  TextEditingController controllerTwo = new TextEditingController();

  void _printText() {
    print("controller one: ${controllerOne.text}");
    print("controller two: ${controllerTwo.text}");
  }

  @override
  Widget build(BuildContext context) {
    InputDecoration decoration(label) =>
        new InputDecoration(border: OutlineInputBorder(), labelText: label);

    Widget body = Column(
      children: <Widget>[
        TextField(
          controller: controllerOne,
          decoration: decoration('Textfield One'),
        ),
        SizedBox(height: 16),
        TextField(
          controller: controllerTwo,
          decoration: decoration('TextField Two'),
        )
      ],
    );

    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Padding(padding: EdgeInsets.all(16), child: body),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _printText,
        tooltip: 'Print Text',
        label: Text("Print Text"),
        icon: Icon(Icons.print),
      ),
    );
  }
}
