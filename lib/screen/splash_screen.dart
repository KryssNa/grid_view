import 'package:flutter/material.dart';
import 'package:grid_view/screen/gridview_screen.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => GridViewScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Welcome screen",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
