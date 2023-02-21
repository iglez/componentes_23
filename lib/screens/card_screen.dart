import 'package:componentes_23/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [

          // Extract Widget
          CustomCardType1(),
          SizedBox(height: 10),
          CustomCardType2(
            imageUrl: 'https://img.freepik.com/free-vector/nature-scene-with-river-hills-forest-mountain-landscape-flat-cartoon-style-illustration_1150-37326.jpg?w=2000',
          ),
          SizedBox(height: 10),
          CustomCardType2(
            imageUrl: 'https://img.freepik.com/premium-vector/mountain-green-field-alpine-landscape-nature-with-wooden-houses_194708-1779.jpg?w=2000',
          ),
          SizedBox(height: 10),
          CustomCardType2(
            imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/54/Landscape.svg/2560px-Landscape.svg.png',
          ),
          SizedBox(height: 10),
          CustomCardType2(
            imageUrl: 'https://static.vecteezy.com/system/resources/previews/002/312/417/original/desert-hill-road-landscape-background-free-vector.jpg',
          ),
        ],
      ),
    );
  }
}

