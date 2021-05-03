import 'package:flutter/material.dart';


class ChatImage extends StatefulWidget {
  bool state;
  String name ;
  String surname;
  String url;
  ChatImage(this.state, this.name, this.surname, this.url, {Key key}) : super (key: key);
  

  @override
  _ChatImageState createState() => _ChatImageState();
}

class _ChatImageState extends State<ChatImage> {
  double _width  =60;
  double _height = 60;
 
  @override
  Widget build(BuildContext context) {
  final image = Container(
    margin: EdgeInsets.only(
      top:  20,
      left: 20
    ),

    alignment: Alignment.topLeft,
    child: SizedBox(
      height: _height,
      width: _width ,
      child: Stack(
        fit: StackFit.expand,
        children: [
          SizedBox(
            height: _height-10,
            width: _width-10,
            child: DecoratedBox(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(widget.url),
                  fit: BoxFit.cover,
                ),
                shape: BoxShape.circle,
                 boxShadow: <BoxShadow>[
                BoxShadow (
                  color:  Colors.black38,
                  blurRadius: 15.0,
                  offset: Offset(0.0, 7.0)
                )
              ]
              ),
              
            ),
          ),
        if (widget.state)
          Positioned(
            right: 4,
            bottom: 0,
            child:  SizedBox(
            height: 20,
            width: 20,
            child: DecoratedBox(    
              
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue, 
                 boxShadow: <BoxShadow>[
                BoxShadow (
                  color:  Colors.white,
                  blurRadius: 15.0,
                  offset: Offset(0.0, 7.0)
                )
              ]   
              ),
            ),
          ),
          
          )
        ],
        ),
    ),
  );
 
  final texto =  Container(
    margin: EdgeInsets.only(left: 20),
    child: Column(children: [
    Text(
      widget.name,
      style: TextStyle(fontSize: 22, fontWeight:  FontWeight.bold, color: Colors.black),
    ),
    Text(
      widget.surname,
      style: TextStyle(fontSize: 18, fontWeight:  FontWeight.normal, color: Colors.black),
      textAlign: TextAlign.start,

    ),
    ],) 
  );

    return Row(children: [
         image,
         texto
    ]
     
    );
  }
}