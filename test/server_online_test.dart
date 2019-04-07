
import 'package:flutter_test/flutter_test.dart';

import 'package:project_server/project_server.dart';

import 'common.dart';

//http://chn-vm-projsrv/pwa/default.aspx

void main() {
  test('fetch Context Info', () async {
    final server = Server(url: serverUrl, username: username, password: password);
    var contextInfo = await server.fetchContextInfo();
    expect(contextInfo, isNotNull);
    expect(contextInfo, server.contextInfo);
    expect(contextInfo.formDigestTimeoutSeconds, greaterThan(0));
    expect(contextInfo.formDigestValue, isNotEmpty);
    expect(contextInfo.libraryVersion, isNotEmpty);
    expect(contextInfo.siteFullUrl, isNotNull);
    expect(contextInfo.webFullUrl, isNotNull);
  });

  test('fetch Data', () async {
    final server = Server(url: serverUrl, username: username, password: password);
    var uri = Uri.parse("http://chn-vm-projsrv/pwa/_api/Web/GetUserById(79)/Groups");
    var data = await server.fetchData(uri);
    expect(data, isNotNull);
  });

  test('fetch Projects', () async {
    final server = Server(url: serverUrl, username: username, password: password);
    var projects = await server.fetchProjects();
    expect(projects, isNotNull);
    expect(projects, isNotEmpty);

    var project = projects.where((p) => p.name == "K2L OptoLyzer Studio 1_6 Dev").first;
    expect(project, isNotNull);
    expect(project is PublishedProject, isTrue);

    expect(project.owner.isDeferred, isTrue);
    expect(project.owner.value.title, isNull);
//    await project.loadDeferredProperties(server, false);
//    expect(project.owner.isDeferred, isFalse);
//    expect(project.owner.title, isNotNull);

//    int i = 0;
//    for (var project in projects) {
//      print("$i: ${project.name}, ${project is PublishedProject}");
//      i++;
//    }
  });
}
