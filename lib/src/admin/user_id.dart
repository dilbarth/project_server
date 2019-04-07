
import 'package:project_server/project_server.dart';

class UserId extends PsObject {
  UserId();

  UserId.fromJson(Map<String, dynamic> json) {
    initFromJson(json);
  }

  String nameId;
  String nameIdIssuer;

  @override
  void initFromJson(Map<String, dynamic> json) {
    super.initFromJson(json);

    nameId = json["NameId"] as String;
    nameIdIssuer = json["NameIdIssuer"] as String;
  }

  @override
  Map<String, dynamic> toJson() {
    var json = <String, dynamic> {
      'NameId': nameId,
      'NameIdIssuer': nameIdIssuer,
    };

    json.addAll(super.toJson());

    return json;
  }
}