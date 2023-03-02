import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Slider')),
      body: Column(
        children: [
          // Slider(
          Slider.adaptive(
              min: 50,
              value: _sliderValue,
              max: 400,
              // divisions: 10,
              onChanged: (value) {
                _sliderValue = value;
                setState(() {});
              }),
        ],
      ),
    );
  }
}
