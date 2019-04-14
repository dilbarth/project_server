
import 'package:project_server/project_server.dart';

class PsObjectCollection<T extends PsObject> extends PsObject {
  PsObjectCollection(this.fromJsonCreator);

  final PsObjectFromJsonCallback fromJsonCreator;
  final List<T> items = List<T>();

  @override
  void initFromJson(Map<String, dynamic> json) {
    super.initFromJson(json);

    var results = json["results"];
    if (results == null) {
      return;
    }

    var itemList = List<T>();
    for (var result in results) {
      var item = fromJsonCreator(result);
      itemList.add(item);
    }

    items.clear();
    items.addAll(itemList);
  }

  @override
  Map<String, dynamic> toJson() {
    if (isDeferred) {
      return super.toJson();
    }

    var itemList = new List<dynamic>();
    for (var item in items) {
      itemList.add(item.toJson());
    }
    var json = <String, dynamic> {
      'results': itemList
    };

    return json;
  }
}
