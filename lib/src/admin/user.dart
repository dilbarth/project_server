
import 'package:project_server/project_server.dart';

class User extends PsObject {
  User();

  User.fromJson(Map<String, dynamic> json) {
    initFromJson(json);
  }

  String email;
  PsObject groups;
  bool isHiddenInUI;
  bool isSiteAdmin;
  String loginName;
  int principalType;
  String title;
  DeferredObject<UserId> userId;

  @override
  void initFromJson(Map<String, dynamic> json) {
    super.initFromJson(json);

    email = json["Email"] as String;
    isHiddenInUI = json["IsHiddenInUI"] as bool;
    isSiteAdmin = json["IsSiteAdmin"] as bool;
    loginName = json["LoginName"] as String;
    principalType = json["PrincipalType"] as int;
    title = json["Title"] as String;
    userId = DeferredObject<UserId>(UserId(), json["UserId"]);
  }

  @override
  Map<String, dynamic> toJson() {
    var json = <String, dynamic> {
      'Email': email,
      'IsHiddenInUI': isHiddenInUI,
      'IsSiteAdmin': isSiteAdmin,
      'LoginName': loginName,
      'PrincipalType': principalType,
      'Title': title,
      'UserId': userId.value.toJson(),
    };

    json.addAll(super.toJson());

    return json;
  }
}