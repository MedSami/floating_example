import 'package:flutter/material.dart';
import 'fancy_button.dart';
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new HomePage(),
    );
  }
}


class HomePage extends StatelessWidget {
  var txt="welcome ";
  @override
  Widget build(BuildContext context) => new Scaffold(
    appBar: new AppBar(
      backgroundColor: new Color(0xFF26C6DA),
    ),
      body: new Center(child: new Text(txt)),

    bottomNavigationBar: new Stack(
    overflow: Overflow.visible,
    alignment: new FractionalOffset(.5, 1.0),
    children: [
      new Container(
        height: 50.0,
        color: Colors.red,

        child: Row(
          mainAxisAlignment:MainAxisAlignment.spaceAround,
          children: <Widget>[
            new IconButton(
              icon: new Icon(Icons.home),
              tooltip: 'Increase volume by 10%',
              onPressed: () {  },
            ),
            new IconButton(
              icon: new Icon(Icons.search),
              tooltip: 'Increase volume by 10%',
              onPressed: () {  },
            ),
            new IconButton(
              icon: new Icon(Icons.favorite_border),
              tooltip: 'Increase volume by 10%',
              onPressed: () {  },
            ),
            new CircleAvatar(
              backgroundImage: new NetworkImage("https://scontent.ftun3-1.fna.fbcdn.net/v/t1.0-1/26815140_1861074177244605_4632806692115083620_n.jpg?_nc_cat=0&oh=debccbf7c27dc95929073cacafc488fa&oe=5BBDDD63"),
            )
          ],
        ),

      ),
      new Padding(
        padding: const EdgeInsets.only(bottom: 12.0),
      /* child: new CustomFloating(),*/
        child: new FloatingActionButton(
          notchMargin: 24.0,
          onPressed: () => new CustomFloating(),
          child: new Icon(Icons.open_with),
        ),
      ),
    ],
  ),
  );

}

class CustomFloating extends StatefulWidget {
  @override
  _CustomFloatingState createState() => new _CustomFloatingState();
}

class _CustomFloatingState extends State<CustomFloating> {
  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
       child: FancyButton(onPressed: (){},)

      );

  }
}

