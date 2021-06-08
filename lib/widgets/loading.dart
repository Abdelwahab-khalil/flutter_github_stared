import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(vertical: 60.0, horizontal: 50.0),
            child: Column(
              children: <Widget>[
                SizedBox(height: 30),
                SpinKitChasingDots(
                  color: Colors.amber,
                  size: 50.0,
                ),
              ],
            )

          )
          
        ],
      ),
    );
  }
}