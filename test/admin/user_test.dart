
import 'package:flutter_test/flutter_test.dart';

import 'package:project_server/project_server.dart';

import '../common.dart';

void main() {

  test('fetch User', () async {
    final server = Server(url: serverUrl, username: username, password: password);
    var uri = Uri.parse("http://chn-vm-projsrv/pwa/_api/ProjectServer/Projects('8397cb15-8020-e911-8d18-0028f8246d86')/Owner");
    var data = await server.fetchData(uri);
    expect(data, isNotNull);

    var user = User(data["d"]);
    expect(user.id, equals("79"));
    expect(user.metaData.type, equals("SP.User"));
    expect(user.userId.metaData.type, equals("SP.UserIdInfo"));

    var userJson = user.toJson();
    var user2 = User(userJson);
    expect(user2.metaData.type, equals("SP.User"));
    expect(user2.userId.metaData.type, equals("SP.UserIdInfo"));

    expect(user.id, equals("79"));
    expect(user.email, equals(user2.email));
    expect(user.isHiddenInUI, equals(user2.isHiddenInUI));
    expect(user.isSiteAdmin, equals(user2.isSiteAdmin));
    expect(user.loginName, equals(user2.loginName));
    expect(user.principalType, equals(user2.principalType));
    expect(user.title, equals(user2.title));
    expect(user.userId.nameId, equals(user2.userId.nameId));
    expect(user.userId.nameIdIssuer, equals(user2.userId.nameIdIssuer));
  });
}
