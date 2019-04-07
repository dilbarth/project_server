
import 'package:flutter_test/flutter_test.dart';

import 'package:project_server/project_server.dart';

import '../common.dart';

void main() {

  test('fetch User from JSON', () async {

    var data = {"d":{"__metadata":{"id":"Web/GetUserById(79)","uri":"http://chn-vm-projsrv/pwa/_api/Web/GetUserById(79)","type":"SP.User"},"Groups":{"__deferred":{"uri":"http://chn-vm-projsrv/pwa/_api/Web/GetUserById(79)/Groups"}},"Id":79,"IsHiddenInUI":false,"LoginName":"i:0#.w|mchp-main\\m21053","Title":"Martin Barth - M21053","PrincipalType":1,"Email":"martin.barth@k2l.de","IsSiteAdmin":false,"UserId":{"__metadata":{"type":"SP.UserIdInfo"},"NameId":"s-1-5-21-1717218434-1658480618-1103294636-57886","NameIdIssuer":"urn:office:idp:activedirectory"}}};

    var user = User.fromJson(data["d"]);
    _checkUser(user);

    var userJson = user.toJson();
    var user2 = User.fromJson(userJson);
    _checkUser(user2);

    expect(user.id, equals(user2.id));
    expect(user.email, equals(user2.email));
    expect(user.isHiddenInUI, equals(user2.isHiddenInUI));
    expect(user.isSiteAdmin, equals(user2.isSiteAdmin));
    expect(user.loginName, equals(user2.loginName));
    expect(user.principalType, equals(user2.principalType));
    expect(user.title, equals(user2.title));
    expect(user.userId.value.nameId, equals(user2.userId.value.nameId));
    expect(user.userId.value.nameIdIssuer, equals(user2.userId.value.nameIdIssuer));
  });

  test('fetch User Online', () async {
    final server = Server(url: serverUrl, username: username, password: password);
    var uri = Uri.parse("http://chn-vm-projsrv/pwa/_api/ProjectServer/Projects('8397cb15-8020-e911-8d18-0028f8246d86')/Owner");
    var data = await server.fetchData(uri);
    expect(data, isNotNull);

    var user = User.fromJson(data["d"]);
    _checkUser(user);
  });
}

void _checkUser(User user) {
  expect(user.metaData.type, equals("SP.User"));
  expect(user.userId.value.metaData.type, equals("SP.UserIdInfo"));

  expect(user.id, equals("79"));
  expect(user.email, equals("martin.barth@k2l.de"));
  expect(user.isHiddenInUI, isFalse);
  expect(user.isSiteAdmin, isFalse);
  expect(user.loginName, equals("i:0#.w|mchp-main\\m21053"));
  expect(user.principalType, equals(1));
  expect(user.title, equals("Martin Barth - M21053"));
  expect(user.userId.value.nameId, equals("s-1-5-21-1717218434-1658480618-1103294636-57886"));
  expect(user.userId.value.nameIdIssuer, equals("urn:office:idp:activedirectory"));
}
