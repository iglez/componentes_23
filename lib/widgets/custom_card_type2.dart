import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  
  final String imageUrl;
  
  const CustomCardType2({
    super.key, 
    required this.imageUrl
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      elevation: 30,
      // shadowColor: Colors.amber,
      child: Column(
        children: [
          FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage( imageUrl ),
            width: double.infinity,
            height: 260,
            fit: BoxFit.cover,
          ),
          Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(
                right: 20,
                bottom: 10,
                top: 10,
              ),
              child: Text('Un hermoso paisaje'))
        ],
      ),
    );
  }
}
