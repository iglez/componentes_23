import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatefulWidget {
  const ListViewBuilderScreen({super.key});

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {
  final List<int> imagesIDs = [1, 2, 3, 4, 5, 6, 7, 8, 10];
  final ScrollController scrollController = ScrollController();
  bool isLoading = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    scrollController.addListener(() {
      // print(scrollController.position.pixels);
      // print(scrollController.position.maxScrollExtent);
      if ((scrollController.position.pixels + 500) >=
          scrollController.position.maxScrollExtent) {
        // add10();
        fetchData();
      }
    });
  }

  Future fetchData() async {
    if (isLoading) return;

    isLoading = true;
    setState(() {});

    // simulando que tiempo
    await Future.delayed(const Duration(seconds: 3));

    add10();

    isLoading = false;
    setState(() {});
  }

  void add10() {
    int lastID = imagesIDs.last;
    imagesIDs.addAll([1, 2, 3, 4, 5].map((e) => lastID + e));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: Colors.black,
        body: MediaQuery.removePadding(
          context: context,
          removeTop: true,
          removeBottom: true,
          child: Stack(
            children: [
              ListView.builder(
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
              Positioned(
                bottom: 40, 
                left: size.width * 0.5 - 30,
                child: const _loadingIcon()
              ),
            ],
          ),
        ));
  }
}

class _loadingIcon extends StatelessWidget {
  const _loadingIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      // color: Colors.white,
      width: 60,
      height: 60,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.9), shape: BoxShape.circle),
      child: const CircularProgressIndicator(),
    );
  }
}
