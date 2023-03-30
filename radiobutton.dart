import 'package:flutter/material.dart';

class RButton extends StatefulWidget {
  const RButton({Key? key}) : super(key: key);

  @override
  State<RButton> createState() => _RButtonState();
}

class _RButtonState extends State<RButton> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("ss")),
      body: const Center(
        child: MyBotton(),
      ),
    
    );
  }
}
/// This is the stateful widget that the main application instantiates.
class MyBotton extends StatefulWidget {
  const MyBotton({ Key ?key}) : super(key: key);
  @override
  State<MyBotton> createState() => _MyBottonState();
}
/// This is the private State class that goes with MyBotton.
class _MyBottonState extends State<MyBotton> {
  int value = 0;
  Widget CustomRadioButton(String text, int index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: OutlinedButton(
        onPressed: () {
          setState(() {
            value = index;
          });
        },
        style: OutlinedButton.styleFrom(
          minimumSize: Size(MediaQuery.of(context).size.width*.9, 70),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          side: BorderSide(color: (value == index) ? Colors.green : Colors.black),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: (value == index) ? Colors.green : Colors.black,
          ),
        ),

      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CustomRadioButton("Single", 1),
        CustomRadioButton("Married", 2),
        CustomRadioButton("Other", 3)
      ],
    );
  }
}
