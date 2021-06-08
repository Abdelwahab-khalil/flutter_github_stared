import 'package:flutter/material.dart';
import 'package:gemography_challenge/model/githubModel.dart';
import 'package:gemography_challenge/provider/githubProvider.dart';
import 'package:gemography_challenge/widgets/loading.dart';
import 'package:gemography_challenge/widgets/mostStared.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<GithubModel> _list = [];
  String name, description, userName, avatar;
  int start, length;
  bool loading = false;

  Future reposData;

  void fetchData() async {
    reposData = await Provider.of<GithubProvider>(context, listen: false)
        .fetchData()
        .then((value) {
      setState(() {
        _list = value;
        loading = false;
        length = _list.length;
      });
      print('$length');
      return reposData;
    });
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  void showData(int i) {
    String name, description, userName, avatar;
    int star;
    if (_list != null) {
      setState(() {
        name = _list[i].name;
        description = _list[i].description;
        userName = _list[i].full_name;
        avatar = _list[i].owner["avatar_url"];
        start = _list[i].stargazers_count;
      });
      MostStared(name, description, userName, avatar, star);
    } else
      fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return loading
        ? Loading()
        : Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.grey[100],
              title: Padding(
                padding: const EdgeInsets.all(80.0),
                child: Text(
                  'Trending Repos',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            body: SingleChildScrollView(
                child: Container(
              child: FutureBuilder<List<GithubModel>>(
                future: reposData,
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return Center(
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                      ),
                    );
                  } else if (snapshot.hasData) {
                    for (int i = 0; i < snapshot.data.length; i++) {
                      MostStared('ff', 'ff', 'ff', 'ff', 5);
                    }
                  }
                  return null;
                },
              ),
            )),
          );
  }
}
