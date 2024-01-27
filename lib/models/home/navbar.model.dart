class NavBarModel {
  String? assets;
  String? name;
  int? index;
  String? assetsActive;
  NavBarModel({this.assets, this.name, this.index, this.assetsActive});

  NavBarModel.fromJson(Map<String, dynamic> json) {
    assets = json['assets'];
    name = json['name'];
    index = json['index'];
    assetsActive = json['assetsActive'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['assets'] = assets;
    data['name'] = name;
    data['index'] = index;
    data['assetsActive'] = assetsActive;
    return data;
  }
}
