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
        children: [

          Card(
            child: Column(
              children: const [
                ListTile(
                  leading: Icon(Icons.document_scanner),
                  title: Text('Soy un titulo'),
                )
              ],
            ),
          )

        ],
      ),
    );
  }
}