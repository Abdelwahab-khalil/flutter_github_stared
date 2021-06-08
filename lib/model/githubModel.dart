  class GithubModel {
  String name;
  String description;
  String full_name;
  dynamic owner;
  int stargazers_count;
  

  GithubModel(
      {
      this.name,
      this.description,
      this.full_name,
      this.owner,
      this.stargazers_count,
      });

  GithubModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    description = json['description'];
    full_name = json['full_name'];
    owner = json['owner'];
    stargazers_count = json['stargazers_count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['description'] = this.description;
    data['full_name'] = this.full_name;
    data['owner'] = this.owner;
    data['stargazers_count'] = this.stargazers_count;
    return data;
  }
}
