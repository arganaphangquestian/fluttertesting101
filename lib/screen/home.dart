import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int number = 0; // 1 ->
  bool isLoading = false;

  int addNumber() {
    // await Future.delayed(Duration(seconds: 0)); // Heavy Proccess
    return number + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          key: Key("IncButton"),
          onPressed: () {
            var res = addNumber();
            setState(() {
              number = res;
            });
          },
          child: Text('Count $number'),
        ),
      ),
    );
  }
}
