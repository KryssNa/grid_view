import 'package:flutter/material.dart';

class GridViewScreen extends StatefulWidget {
  const GridViewScreen({super.key});

  @override
  State<GridViewScreen> createState() => _GridViewScreenState();
}

class _GridViewScreenState extends State<GridViewScreen> {
  String name = "Kryss";
  List<bool>? buttonVisibility;

  @override
  void initState() {
    super.initState();
    buttonVisibility = List<bool>.filled(name.length, true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gridview screen"),
        centerTitle: true,
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: List.generate(name.length, (index) {
          return Visibility(
            visible: buttonVisibility![index],
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  buttonVisibility![index] = false;
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: (Colors.blue),
                textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold),
              ),
              child: Text(name[index]),
            ),
          );
        }),
      ),
    );
  }
}
