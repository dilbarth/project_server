
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

  bool isDeferred;
  Uri uri;
  MetaData metaData;
  String id;

  void initFromJson(Map<String, dynamic> json) {
    assert(json != null && json.keys.length > 0);

    if (json.containsKey("__deferred")) {
      isDeferred = true;
      var path = json["__deferred"]["uri"];
      uri = Uri.parse(path);
      return;
    }

    isDeferred = false;

    var metaDataJson = json["__metadata"];
    if (metaDataJson != null) {
      metaData = MetaData(metaDataJson);
      uri = metaData.uri;
    }

    id = json["Id"]?.toString();
  }

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
}

class PsObjectInstance extends PsObject {
  PsObjectInstance();

  @override
  void initFromJson(Map<String, dynamic> json) {
    super.initFromJson(json);
    print("PsObjectInstance: ${uri.toString()}");
  }
}

class DeferredObject<T extends PsObject> {
  DeferredObject(T value, Map<String, dynamic> json) {
    assert(json != null && json.keys.length > 0);

    _value = value;

    if (json.containsKey("__deferred")) {
      var path = json["__deferred"]["uri"];
      _uri = Uri.parse(path);
      return;
    }

    _value.initFromJson(json);

    _isDeferred = _value.isDeferred;
  }

  bool _isDeferred = true;
  Uri _uri;

  bool get isDeferred => _isDeferred;
  Uri get uri => _uri;

  T _value;
  T get value {
    if (isDeferred) {
      return null;
    }
    return _value;
  }

  Future fetchDataIfDeferred(Server server) async {
    if (!isDeferred) {
      return;
    }
    var data = await server.fetchData(uri);
    if (data != null) {
      _value.initFromJson(data["d"]);
      _isDeferred = _value.isDeferred;
    }
  }
}