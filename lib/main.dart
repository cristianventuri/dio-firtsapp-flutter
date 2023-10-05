import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const colorBackgroundPrimary = Color.fromARGB(255, 90, 125, 106);
    return MaterialApp(
      title: 'Flutter - Cristian',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: colorBackgroundPrimary),
        useMaterial3: false,
      ),
      home: const MyHomePage(title: 'App Flutter - Cristian'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    const colorBackgroundPrimary = Color.fromARGB(255, 90, 125, 106);
    const colorTextPrimary = Color.fromARGB(255, 255, 255, 255);

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.secondary,
          title: Text(
            widget.title,
            style: const TextStyle(
              color: colorTextPrimary,
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Você apertou o botão tantas vezes:',
                style: TextStyle(color: colorBackgroundPrimary),
              ),
              Text(
                '$_counter',
                style: const TextStyle(
                    color: Color.fromARGB(255, 118, 168, 208),
                    fontSize: 50,
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
        floatingActionButton: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                onPressed: _incrementCounter,
                tooltip: 'Incrementar',
                child: const Icon(Icons.add),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: FloatingActionButton(
                  onPressed: _decrementCounter,
                  tooltip: 'Decrementar',
                  child: const Icon(Icons.remove),
                ),
              ),
            ),
          ],
        ));
  }
}
