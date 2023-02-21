import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  final String imageUrl;
  final String? name;

  const CustomCardType2({
    super.key, 
    required this.imageUrl,
    this.name
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
            image: NetworkImage(imageUrl),
            width: double.infinity,
            height: 260,
            fit: BoxFit.cover,
          ),


          if ( name != null )
            Container(
                alignment: AlignmentDirectional.centerEnd,
                padding: const EdgeInsets.only(
                  right: 20,
                  bottom: 10,
                  top: 10,
                ),
                child: Text( name! )
            )
        ],
      ),
    );
  }
}
