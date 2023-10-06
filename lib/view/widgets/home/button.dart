import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  const Button({super.key});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(10),
        width: 10,
        height: 50,
        alignment: Alignment.center,
        child: TextButton(
          onPressed: () {},
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.assignment, color: Colors.white),
              SizedBox(width: 10),
              Text("My Orders",
                  style: TextStyle(color: Colors.white, fontSize: 20)),
            ],
          ),
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(Colors.orangeAccent),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
            ),
          ),
        ));
  }
}
