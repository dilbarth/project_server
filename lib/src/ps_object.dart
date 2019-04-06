
import 'package:project_server/project_server.dart';

class MetaData {
  MetaData(Map<String, dynamic> json) {
    if (json != null) {
      id = json["id"];
      type = json["type"];
      if (json.containsKey("uri")) {
        uri = Uri.parse(json["uri"] as String);
      }
    }
  }

  String id;
  String type;
  Uri uri;

  Map<String, dynamic> toJson() {
    var metaData = Map<String, dynamic>();

    if (id != null) {
      metaData["id"] = id;
    }
    if (type != null) {
      metaData["type"] = type;
    }
    if (uri != null) {
      metaData["uri"] = uri.toString();
    }

    return metaData;
  }
}

abstract class PsObject {
  PsObject(Map<String, dynamic> json) {
    if (json == null || json.keys.length == 0) {
      return;
    }
    
    if (json.containsKey("__deferred")) {
      isDeferred = true;
      var path = json["__deferred"]["uri"];
      uri = Uri.parse(path);
      return;
    }
    var metaDataJson = json["__metadata"];
    if (metaDataJson != null) {
      metaData = MetaData(metaDataJson);
    }

    id = json["Id"]?.toString();
  }

  bool isDeferred = false;
  Uri uri;

  MetaData metaData;
  String id;

  Map<String, dynamic> toJson() {
    var json = <String, dynamic> {
      'Id': id,
    };

    if (metaData != null) {
      var metaDataJson = metaData.toJson();
      if (metaDataJson.isNotEmpty) {
        json["__metadata"] = metaDataJson;
      }
    }

    return json;
  }

  Future loadDeferredProperties(Server server, bool recursive);
}