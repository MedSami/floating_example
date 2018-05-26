import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class FancyButton extends StatelessWidget {

  FancyButton({@required this.onPressed});
final GestureTapCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        fillColor: Colors.deepOrange,
        splashColor: Colors.orangeAccent,
        onPressed: onPressed,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            new IconButton(
              icon: new Icon(Icons.home),
              tooltip: 'Increase volume by 10%',


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
          ],
        ),
       shape: const StadiumBorder(),);
  }
}
