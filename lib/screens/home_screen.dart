import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    const fontSize30 = TextStyle( fontSize: 30 );
    int counter = 10;

    return Scaffold(
      appBar: AppBar(
        title: const Text("HomeScreen", style: TextStyle(color: Colors.white)),
        elevation: 10.0,
        backgroundColor: Colors.lightBlue,
        centerTitle: true,
      ),
      backgroundColor: Colors.lightGreen,
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Numero de Clicks', style: fontSize30),
              Text(  '$counter', style: fontSize30),
            ],
          ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon( Icons.add),
        onPressed: () {
          counter++;
          print("Hola mundo: $counter");
        },
      ),
    );
  }
  
}