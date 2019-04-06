import 'package:flutter_test/flutter_test.dart';

import 'package:project_server/project_server.dart';

//http://chn-vm-projsrv/pwa/default.aspx
var serverUrl = Uri.parse("http://chn-vm-projsrv/pwa");
var username = "m21053";
var password = "User3*Story";

void main() {
  test('fetch Context Info', () async {
    final server = Server(url: serverUrl, username: username, password: password);
    var contextInfo = await server.fetchContextInfoNtlm();
    expect(contextInfo, isNotNull);
    expect(contextInfo, server.contextInfo);
    expect(contextInfo.formDigestTimeoutSeconds, greaterThan(0));
    expect(contextInfo.formDigestValue, isNotEmpty);
    expect(contextInfo.libraryVersion, isNotEmpty);
    expect(contextInfo.siteFullUrl, isNotNull);
    expect(contextInfo.webFullUrl, isNotNull);
  });

  test('fetch Projects', () async {
    final server = Server(url: serverUrl, username: username, password: password);
    var contextInfo = await server.fetchContextInfoNtlm();
    expect(contextInfo, isNotNull);
    var projects = await server.fetchProjects();

  });
}
