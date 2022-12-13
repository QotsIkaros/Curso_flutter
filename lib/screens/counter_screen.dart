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

    const fontSize30 = TextStyle( fontSize: 30, color: Colors.black );

    return Scaffold(
      appBar: AppBar(
        title: const Text("CounterScreen", style: TextStyle(color: Colors.white)),
        elevation: 10.0,
        backgroundColor: Colors.indigo,
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.start,
            //   children: const [
            //     Image(
            //       image: NetworkImage('http://www.fruteriasnenas.com/Web/assets/img/logo.png'),
            //       filterQuality: FilterQuality.none,
            //     )
            //   ],
            // ),
            const Text('Numero de Clicks', style: fontSize30),
            Text(  '$counter', style: TextStyle(fontSize: 30,color: counter > 0? Colors.green : counter < 0? Colors.red : Colors.grey), ),
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
          backgroundColor: Colors.lightGreen,
          child: const Icon( Icons.exposure_plus_1_outlined)
        ),
        
        FloatingActionButton(
          onPressed: () => restFn(),
          backgroundColor: Colors.grey,
          child: const Icon( Icons.exposure_zero_outlined)
        ),

        FloatingActionButton(
          onPressed: () => decreaseFn(),
          backgroundColor: Colors.red,
          child: const Icon( Icons.exposure_minus_1_outlined)
        ),

      ],
    );
  }
}