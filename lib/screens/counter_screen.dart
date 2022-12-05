import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int counter = 10;

  void increase () {
    counter++;
    setState(() {});
  }
  void reset () {
    counter = 0;
    setState(() {});
  }
  void decrease () {
    counter--;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {

    const fontSize30 = TextStyle( fontSize: 30 );

    return Scaffold(
      appBar: AppBar(
        title: const Text("CounterScreen", style: TextStyle(color: Colors.white)),
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomfloatingActionButton(
        increaseFn: increase,
        restFn: reset,
        decreaseFn: decrease,
      ),
    );
  }
}

class CustomfloatingActionButton extends StatelessWidget {

  final Function increaseFn;
  final Function restFn;
  final Function decreaseFn;

  const CustomfloatingActionButton({
    Key? key, 
    required this.increaseFn, 
    required this.restFn, 
    required this.decreaseFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [

        FloatingActionButton(
          onPressed: () => increaseFn(),
          child: const Icon( Icons.exposure_plus_1_outlined),
        ),
        
        FloatingActionButton(
          onPressed: () => restFn(),
          child: const Icon( Icons.exposure_zero_outlined)
        ),

        FloatingActionButton(
          onPressed: () => decreaseFn(),
          child: const Icon( Icons.exposure_minus_1_outlined)
        ),

      ],
    );
  }
}