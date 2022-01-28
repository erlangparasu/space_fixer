/// ErlangParasu 2022

import 'package:flutter/material.dart';
import 'package:space_fixer/space_fixer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            color: Colors.black,
          ),
          SpaceFixerHorizontalLine(
            context: context,
            overflowHeight: 3,
            overflowColor: Colors.black,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            color: Colors.black,
          ),
          SpaceFixerHorizontalLine(
            context: context,
            overflowHeight: 3,
            overflowColor: Colors.black,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            color: Colors.black,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
