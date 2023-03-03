import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Slider')),
      body: Column(
        children: [
          // Slider(
          Slider.adaptive(
              min: 50,
              value: _sliderValue,
              max: 400,
              // divisions: 10,
              onChanged: _sliderEnabled 
                ? (value) {
                _sliderValue = value;
                setState(() {});
              } 
              : null),

          // Checkbox(
          //     value: _sliderEnabled,
          //     onChanged: (value) {
          //       _sliderEnabled = value ?? true;
          //       setState(() {
                  
          //       });
          //     }),
          CheckboxListTile(
            title: const Text('Habilitar slider'),
            value: _sliderEnabled, 
            onChanged: (value) => setState(() { _sliderEnabled = value ?? true; })
          ),

          Image(
            image: const NetworkImage(
                'https://static.wikia.nocookie.net/thelastofus/images/b/b1/Stalker_models.png/revision/latest?cb=20200711175035'),
            fit: BoxFit.contain,
            width: _sliderValue,
          ),
          const SizedBox(height: 100),
          // De ser necesario se envielve en un
          // Exapnded / SingleChildScrollView
          // Image(
          //   image: const NetworkImage('https://static.wikia.nocookie.net/thelastofus/images/7/72/Runner_models.png/revision/latest?cb=20200711175107'),
          //   fit: BoxFit.contain,
          //   width: _sliderValue,
          // ),
          // const SizedBox(height: 100),
        ],
      ),
    );
  }
}
