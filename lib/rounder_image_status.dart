import 'package:flutter/material.dart';

class RounderImageStatus extends StatelessWidget {
  String name = "";
  String image = "";
  RounderImageStatus(this.name, this.image);


  @override
  Widget build(BuildContext context) {


    final imageRounder = Container(
        height: 60,
        width:  60,
        margin: EdgeInsets.only(
          left: 20,
          top: 20
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(image),
            fit: BoxFit.cover,
           ),
           shape: BoxShape.circle,
           border: Border.all(color: Colors.blue, width: 3 )
  
        )
        
      );
    

    return Column (children: [
      imageRounder,
      Text(name),
    ],);
  }
}