import 'package:flutter/material.dart';

import '../widgets/base_ListTile.dart';

class DishPage extends StatefulWidget {
  const DishPage({super.key});

  @override
  State<DishPage> createState() => _DishPageState();
}

class _DishPageState extends State<DishPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      child: ListView.builder(itemBuilder: (context, index) {
        return BaseListTile(
          icon: Icon(Icons.image, color: Colors.red, size: 50),
          title: Text("Mon Ngon", style: TextStyle(fontSize: 20)),
          description: Text(
            'Giao tinh quan tu nhat nhu nuoc',
            style: TextStyle(color: Color.fromRGBO(50, 52, 62, 1)),
          ),
          time: Text("10-10-2021"),
          trailing: Container(
            width: 20,
            height: 100,
            alignment: Alignment.center,
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Icon(Icons.edit, color: Colors.red, size: 20),
              ),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Icon(Icons.delete, color: Colors.red, size: 20),
              ),
            ]),
          ),
        );
      }),
    );
  }
}
