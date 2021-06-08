import 'package:gemography_challenge/model/githubModel.dart';
import 'package:dio/dio.dart';

const String apiUrl =
    "https://api.github.com/search/repositories?q=created:%3E2021-06-05&sort=stars&order=desc";

Future<List<GithubModel>> fetchRepos() async {
  Dio dio = Dio();
  List<GithubModel> _staredRepos = [];
  String avatar;

  try {
    Response response = await dio.get(apiUrl);
    if (response.statusCode == 200) {
      _staredRepos = (response.data["items"] as List)
          .map((e) => GithubModel.fromJson(e))
          .toList();
      return _staredRepos;
    } else
      return null;
  } catch (error) {
    print(error);
    throw (error);
  }
}
