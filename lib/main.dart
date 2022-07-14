import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController textEditingController = TextEditingController();
    final TextEditingController textEditing = TextEditingController();
    final TextEditingController textTel = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Регистрация'),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Text(
          'Регистрация',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50.0),
        ),
        const SizedBox(
          height: 30.0,
        ),
        const Text(
          'Аты:',
          style: TextStyle(fontSize: 15.0),
        ),
        const SizedBox(),
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: TextField(
            controller: textEditingController,
            obscureText: false,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: '',
            ),
          ),
        ),
        const SizedBox(),
        const Text(
          'Ф.И.О:',
          style: TextStyle(
            fontSize: 15.0,
          ),
        ),
        const SizedBox(),
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: TextField(
            controller: textEditing,
            obscureText: false,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: '',
            ),
          ),
        ),
        const SizedBox(),
        const Text(
          'Тел:',
          style: TextStyle(
            fontSize: 15.0,
          ),
        ),
        const SizedBox(),
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: TextField(
            controller: textTel,
            obscureText: false,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: '',
            ),
          ),
        ),
        OutlinedButton(
          style: OutlinedButton.styleFrom(
            shape: const StadiumBorder(),
            backgroundColor: Colors.blue,
            primary: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
          ),
          onPressed: () {
            FocusScope.of(context).unfocus();

            // ignore: avoid_print
            print('Аты ==> ${textEditingController.text}');
            // ignore: avoid_print
            print('Ф.И.О ==> ${textEditing.text}');
            print('Тел: ==> ${textTel.text}');
          },
          child: const Text(
            'Send',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ]),
    );
  }
}
