class NavBarModel {
  String? assets;
  String? name;
  num? index;
  NavBarModel({this.assets, this.name, this.index});

  NavBarModel.fromJson(Map<String, dynamic> json) {
    assets = json['assets'];
    name = json['name'];
    index = json['index'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['assets'] = assets;
    data['name'] = name;
    data['index'] = index;
    return data;
  }
}
