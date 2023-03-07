import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatefulWidget {
  const ListViewBuilderScreen({super.key});

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {
  final List<int> imagesIDs = [1, 2, 3, 4, 5, 6, 7, 8, 10];
  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    scrollController.addListener(() {
      // print(scrollController.position.pixels);
      // print(scrollController.position.maxScrollExtent);
      if ((scrollController.position.pixels + 500) >=
          scrollController.position.maxScrollExtent) {
        add10();
      }
    });
  }

  void add10() {
    int lastID = imagesIDs.last;
    imagesIDs.addAll([1, 2, 3, 4, 5].map((e) => lastID + e));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: MediaQuery.removePadding(
          context: context,
          removeTop: true,
          removeBottom: true,
          child: ListView.builder(
            controller: scrollController,
            itemCount: imagesIDs.length,
            itemBuilder: (context, index) {
              // https://picsum.photos/
              return FadeInImage(
                width: double.infinity,
                height: 300,
                fit: BoxFit.cover,
                placeholder: AssetImage('assets/jar-loading.gif'),
                image: NetworkImage(
                    'https://picsum.photos/500/300?image=${imagesIDs[index]}'),
              );
            },
          ),
        ));
  }
}
