import 'package:flutter/material.dart';

void main() => runApp(
  const MaterialApp(debugShowCheckedModeBanner: false, home: GestureDemo()),
);

class GestureDemo extends StatelessWidget {
  const GestureDemo({super.key});

  void _log(String msg) => debugPrint(msg);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('InkWell Demo')),
      body: Center(
        child: InkWell(
          onTap: () => _log('InkWell di-tap!'),
          splashColor: Colors.red.withOpacity(0.3),
          borderRadius: BorderRadius.circular(10),
          child: Container(
            width: 200,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(10),
            ),
            alignment: Alignment.center,
            child: const Text(
              'InkWell',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}
