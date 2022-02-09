import 'package:flutter/material.dart';

class MyApp2 extends StatefulWidget {
  final int counter = 0 ;
  const MyApp2({
    Key? key,
  }) : super(key: key);

  Function onPress;

  @override
  _MyApp2State createState() => _MyApp2State();
}

class _MyApp2State extends State<MyApp2> {
  @override
  void didUpdateWidget(covariant MyApp2 oldWidget) {
    super.didUpdateWidget(oldWidget);
    // TODO: implement didUpdateWidget
    if (this.widget.counter != oldWidget.counter) {
      print("count has change");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Column(
        children: [
          ElevatedButton(
            onPressed: widget.onPress,
            child: Text("Reset Count"),
          ),
        ],
      ),
    ));
  }
}
