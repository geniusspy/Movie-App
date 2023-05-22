import 'package:flutter/material.dart';

class StateFul extends StatefulWidget {
  const StateFul({Key? key}) : super(key: key);

  @override
  State<StateFul> createState() => _StateFulState();
}

class _StateFulState extends State<StateFul> {

  String? a;
  @override
  void initState() {
    getString().then((value) {
      a=value;
      setState(() {

      });
    });
    // TODO: implement initState
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: a == null? CircularProgressIndicator():Text('$a'),
      ),
    );
  }
}

Future<String>getString(){
  return Future.delayed(Duration(seconds: 3),(){
    return "Hello World";
  });
}