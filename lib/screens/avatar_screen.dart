import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ivan Gonzalez'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: const CircleAvatar(
              child: Text('IG'),
              backgroundColor: Colors.black,
            ),
          )
        ],
      ),
      body: const Center(
        child: Text('Avatar Screen')
      ),
    );
  }
}
