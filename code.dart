import 'package:flutter/material.dart';

class ProductListPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProductState();
  }
}

//Remember to return Scaffold 
class _ProductState extends State<ProductListPage> {
  var height = 40.0;
  var width = 60.0;
  //var color1 = 0xff14ff65;
  var color1 = Colors.blueGrey;

  @override
  Widget build(BuildContext context) {
    // return Center(child: Text('List'),);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          AnimatedContainer(
            duration: Duration(seconds: 5),
            width: width,
            height: height,
            color: color1,
          ),
          RaisedButton(
            child: Text('Press'),
            onPressed: () {
              setState(() {
                height = 320.0;
                width = 90.0;
                color1 = Colors.red;
              });
            },
          ),
          SizedBox(
            height: 10.0,
          ),
          RaisedButton(
            child: Text('Revert'),
            onPressed: () {
              setState(() {
                height = 40.0;
                width = 60.0;
                color1 = Colors.blueGrey;
              });
            },
          ),
        ],
      ),
    );
  }
}
