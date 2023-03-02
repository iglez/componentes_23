import 'package:flutter/material.dart';

class SliderScreen extends StatelessWidget {
  const SliderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Slider')),
      body: Column(
        children: [
          Slider(
              min: 50,
              value: 100,
              max: 400,
              onChanged: (value) {
                print(value);
              }),
        ],
      ),
    );
  }
}
