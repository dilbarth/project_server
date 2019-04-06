
import 'package:project_server/project_server.dart';

class User extends PsObject {
  User(Map<String, dynamic> json)
      : super(json) {
    if (isDeferred) {
      return;
    }

    email = json["Email"] as String;
    isHiddenInUI = json["IsHiddenInUI"] as bool;
    isSiteAdmin = json["IsSiteAdmin"] as bool;
    loginName = json["LoginName"] as String;
    principalType = json["PrincipalType"] as int;
    title = json["Title"] as String;
    userId = UserId(json["UserId"]);
  }

  String email;
  PsObject groups;
  bool isHiddenInUI;
  bool isSiteAdmin;
  String loginName;
  int principalType;
  String title;
  UserId userId;

  @override
  Map<String, dynamic> toJson() {
    var json = <String, dynamic> {
      'Email': email,
      'IsHiddenInUI': isHiddenInUI,
      'IsSiteAdmin': isSiteAdmin,
      'LoginName': loginName,
      'PrincipalType': principalType,
      'Title': title,
      'UserId': userId.toJson(),
    };

    json.addAll(super.toJson());

    return json;
  }

  @override
  Future loadDeferredProperties(Server server, bool recursive) async {
    if (userId.isDeferred) {
      var data = await server.fetchData(userId.uri);
      userId = UserId(data["d"]);
      if (recursive) {
        userId.loadDeferredProperties(server, recursive);
      }
    }
  }
}