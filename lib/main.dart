import 'package:chat_views/chat_image.dart';
import 'package:flutter/material.dart';
import 'rounder_image_status.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
       _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),

       body: Stack(
         children: [
           Container(
             height: 100,
            margin: EdgeInsets.only(top: 10, left: 10 , right: 10),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder()
              )
            ),
            ),
           Container(
              height: 100,
              margin: EdgeInsets.only(top: 60, left: 0.25 , right: 0.25),
              child:  ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  RounderImageStatus("diego", "https://image.freepik.com/vector-gratis/perfil-empresario-dibujos-animados_18591-58479.jpg"),
                  RounderImageStatus("Richard", "https://image.freepik.com/vector-gratis/perfil-avatar-hombre-icono-redondo_24640-14044.jpg"),
                  RounderImageStatus("Cristian", "https://previews.123rf.com/images/yupiramos/yupiramos1609/yupiramos160916237/62576694-avatar-cara-de-hombre-sonriente-caricatura-persona-masculina-ilustración-vectorial.jpg"),
                  RounderImageStatus("jose","https://image.freepik.com/vector-gratis/perfil-empresario-dibujos-animados_18591-58479.jpg"),
                  RounderImageStatus("francisco", "https://image.freepik.com/vector-gratis/perfil-avatar-hombre-icono-redondo_24640-14044.jpg"),
                  RounderImageStatus("angela", "https://previews.123rf.com/images/yupiramos/yupiramos1609/yupiramos160916237/62576694-avatar-cara-de-hombre-sonriente-caricatura-persona-masculina-ilustración-vectorial.jpg"),
                ],)
              ],
           ),
           ),
            Container(
              margin: EdgeInsets.only(top: 160, left: 0.25 , right: 0.25),
             child: ListView(
               scrollDirection: Axis.vertical,
               children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ChatImage(true, "Diego", "Franco", "https://image.freepik.com/vector-gratis/perfil-empresario-dibujos-animados_18591-58479.jpg"),
                      ChatImage(false, "Richard", "Ruiz Diaz", "https://image.freepik.com/vector-gratis/perfil-avatar-hombre-icono-redondo_24640-14044.jpg"),
                      ChatImage(true, "Cristian", "Piedrahita", "https://previews.123rf.com/images/yupiramos/yupiramos1609/yupiramos160916237/62576694-avatar-cara-de-hombre-sonriente-caricatura-persona-masculina-ilustración-vectorial.jpg"),
                      ChatImage(true, "Luis Francisco", "Quitian Cabra", "https://image.freepik.com/vector-gratis/perfil-empresario-dibujos-animados_18591-58479.jpg"),
                      ChatImage(false, "Daniel", "Largo", "https://image.freepik.com/vector-gratis/perfil-avatar-hombre-icono-redondo_24640-14044.jpg"),
                      ChatImage(true, "Daner alfonso", "Aguilar", "https://previews.123rf.com/images/yupiramos/yupiramos1609/yupiramos160916237/62576694-avatar-cara-de-hombre-sonriente-caricatura-persona-masculina-ilustración-vectorial.jpg"),
                      ChatImage(true, "Rafael ", "Pedroza", "https://image.freepik.com/vector-gratis/perfil-empresario-dibujos-animados_18591-58479.jpg"),
                      ChatImage(false, "Yeison", "Sanchez", "https://image.freepik.com/vector-gratis/perfil-avatar-hombre-icono-redondo_24640-14044.jpg"),
                      ChatImage(true, "Jose emilio", "Benavides", "https://previews.123rf.com/images/yupiramos/yupiramos1609/yupiramos160916237/62576694-avatar-cara-de-hombre-sonriente-caricatura-persona-masculina-ilustración-vectorial.jpg"),
                     
                    ],
              )
             ],
           ), 
         )
            
         ],
       ) 
       );
  }
}
