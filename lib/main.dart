import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Buttons'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                // style: ButtonStyle(
                //   backgroundColor: MaterialStateProperty.all(Colors.red),
                //   foregroundColor: MaterialStateProperty.all(Color.fromARGB(255, 76, 89, 175))
                // ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange,
                  onPrimary: Colors.white,
                ),
                child: Text('A Raised Button'),
                onPressed: () {
                  print('Pressed Raised Button!!!');
                },
              ),
              TextButton(
                child: Text('A Flat Button!!'),
                style: TextButton.styleFrom(
                    primary: Colors.red, onSurface: Colors.blueGrey),
                onPressed: () {
                  print('Pressed Flat Button!!!!');
                },
              ),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  primary: Colors.orange,
                  side: BorderSide(color: Colors.black),
                ),
                child: Text('OutLined Button!!!'),
                onPressed: () {
                  print('Pressed OutLined Button!!!');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
