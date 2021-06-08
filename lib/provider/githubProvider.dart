import 'package:flutter/foundation.dart';
import 'package:gemography_challenge/api/githubAPI.dart';
import 'package:gemography_challenge/model/githubModel.dart';

class GithubProvider with ChangeNotifier {
  List<GithubModel> _list = [];
  Future<List<GithubModel>> fetchData() async {
    await fetchRepos().then((value) {
      _list = value;
    });
    return _list;
  }
}
