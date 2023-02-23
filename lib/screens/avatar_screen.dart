import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ivan Gonzalez'),
        actions: const [
          CircleAvatar(
            child: Text('IG'),
          )
        ],
      ),
      body: const Center(
        child: Text('Avatar Screen')
      ),
    );
  }
}
