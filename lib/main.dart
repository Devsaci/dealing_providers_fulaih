
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'my_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
   const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //SecondMethode
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
   MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var obj = Provider.of<MyProvider>(context, listen: true);
    //SecondMethode
    return ChangeNotifierProvider(
      create: (_) => MyProvider(),
      builder: (context, child) => Scaffold(
        appBar: AppBar(
          title: Text("Dealing with Providers"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('You have pushed the button this many times:'),
              Text('${Provider.of<MyProvider>(context, listen: true).count}', style: TextStyle(fontSize: 50)),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => Provider.of<MyProvider>(context, listen: false).increment(),
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
