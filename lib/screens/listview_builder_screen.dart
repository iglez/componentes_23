import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatefulWidget {
  const ListViewBuilderScreen({super.key});

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            // https://picsum.photos/
            return FadeInImage(
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
              placeholder: AssetImage('assets/jar-loading.gif'),
              image: NetworkImage('https://picsum.photos/500/300?image=${index+1}'),
            );
          },
        ),
      )
    );
  }
}