
import 'package:project_server/project_server.dart';

class UserId extends PsObject {
  UserId(Map<String, dynamic> json)
      : super(json) {
    if (isDeferred) {
      return;
    }

    nameId = json["NameId"] as String;
    nameIdIssuer = json["NameIdIssuer"] as String;
  }

  String nameId;
  String nameIdIssuer;

  @override
  Map<String, dynamic> toJson() {
    var json = <String, dynamic> {
      'NameId': nameId,
      'NameIdIssuer': nameIdIssuer,
    };

    json.addAll(super.toJson());

    return json;
  }

  @override
  Future loadDeferredProperties(Server server, bool recursive) async {
  }
}