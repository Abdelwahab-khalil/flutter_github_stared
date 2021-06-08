import 'package:flutter/material.dart';
import 'package:gemography_challenge/provider/githubProvider.dart';
import 'package:provider/provider.dart';

class MostStared extends StatefulWidget {
  String name, description, userName, avatar;
  int star;
  MostStared(
      this.name, this.description, this.userName, this.avatar, this.star);
  @override
  _MostStaredState createState() => _MostStaredState();
}

class _MostStaredState extends State<MostStared> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(widget.name, style: TextStyle(color: Colors.grey[800], fontSize: 20, fontWeight: FontWeight.bold),),
            SizedBox(height: 4,),
            Text(widget.description, style: TextStyle(fontSize: 17),),
            SizedBox(height: 2,),
            Row(
              children: <Widget>[
                Container(
                  height: 12,
                  child: Image.network(widget.avatar),
                ),
                SizedBox(width: 4,),
                Text(widget.userName, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.5),),
                Spacer(),
                Icon(Icons.star),
                Text('${widget.star}')
              ],
            ),
            SizedBox(height: 5,),
            Divider(color: Colors.grey,)
          ],
        ),
      ),
    );
  }
}
