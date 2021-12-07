import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'my_provider.dart';

void main() => runApp(ChangeNotifierProvider<MyProvider>(
      create: (ctx) => MyProvider(),
      child: MyApp(),
    ));

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
    var obj = Provider.of<MyProvider>(context, listen: true);
    return Scaffold(
      appBar: AppBar(
        title: Text("Dealing with Providers"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('You have pushed the button this many times:'),
            Text('${obj.count}',
                style: TextStyle(fontSize: 50)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () =>
            Provider.of<MyProvider>(context, listen: false).increment(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
