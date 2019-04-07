
import 'package:flutter_test/flutter_test.dart';

import 'package:project_server/project_server.dart';

import '../common.dart';

void main() {

  test('get single Project from JSON', () async {
    var data = {"d":{"__metadata":{"id":"ProjectServer/Projects('d0d6f350-9f7e-e811-8cd0-0028f8246d86')","uri":"http://chn-vm-projsrv/pwa/_api/ProjectServer/Projects('d0d6f350-9f7e-e811-8cd0-0028f8246d86')","type":"PS.PublishedProject"},"CheckedOutBy":{"__deferred":{"uri":"http://chn-vm-projsrv/pwa/_api/ProjectServer/Projects('d0d6f350-9f7e-e811-8cd0-0028f8246d86')/CheckedOutBy"}},"CustomFields":{"__deferred":{"uri":"http://chn-vm-projsrv/pwa/_api/ProjectServer/Projects('d0d6f350-9f7e-e811-8cd0-0028f8246d86')/CustomFields"}},"EnterpriseProjectType":{"__deferred":{"uri":"http://chn-vm-projsrv/pwa/_api/ProjectServer/Projects('d0d6f350-9f7e-e811-8cd0-0028f8246d86')/EnterpriseProjectType"}},"Phase":{"__deferred":{"uri":"http://chn-vm-projsrv/pwa/_api/ProjectServer/Projects('d0d6f350-9f7e-e811-8cd0-0028f8246d86')/Phase"}},"QueueJobs":{"__deferred":{"uri":"http://chn-vm-projsrv/pwa/_api/ProjectServer/Projects('d0d6f350-9f7e-e811-8cd0-0028f8246d86')/QueueJobs"}},"Stage":{"__deferred":{"uri":"http://chn-vm-projsrv/pwa/_api/ProjectServer/Projects('d0d6f350-9f7e-e811-8cd0-0028f8246d86')/Stage"}},"Assignments":{"__deferred":{"uri":"http://chn-vm-projsrv/pwa/_api/ProjectServer/Projects('d0d6f350-9f7e-e811-8cd0-0028f8246d86')/Assignments"}},"Calendar":{"__deferred":{"uri":"http://chn-vm-projsrv/pwa/_api/ProjectServer/Projects('d0d6f350-9f7e-e811-8cd0-0028f8246d86')/Calendar"}},"Draft":{"__deferred":{"uri":"http://chn-vm-projsrv/pwa/_api/ProjectServer/Projects('d0d6f350-9f7e-e811-8cd0-0028f8246d86')/Draft"}},"IncludeCustomFields":{"__deferred":{"uri":"http://chn-vm-projsrv/pwa/_api/ProjectServer/Projects('d0d6f350-9f7e-e811-8cd0-0028f8246d86')/IncludeCustomFields"}},"Owner":{"__deferred":{"uri":"http://chn-vm-projsrv/pwa/_api/ProjectServer/Projects('d0d6f350-9f7e-e811-8cd0-0028f8246d86')/Owner"}},"ProjectResources":{"__deferred":{"uri":"http://chn-vm-projsrv/pwa/_api/ProjectServer/Projects('d0d6f350-9f7e-e811-8cd0-0028f8246d86')/ProjectResources"}},"TaskLinks":{"__deferred":{"uri":"http://chn-vm-projsrv/pwa/_api/ProjectServer/Projects('d0d6f350-9f7e-e811-8cd0-0028f8246d86')/TaskLinks"}},"Tasks":{"__deferred":{"uri":"http://chn-vm-projsrv/pwa/_api/ProjectServer/Projects('d0d6f350-9f7e-e811-8cd0-0028f8246d86')/Tasks"}},"ApprovedEnd":"0001-01-01T00:00:00","ApprovedStart":"0001-01-01T00:00:00","CheckedOutDate":"2019-03-14T01:57:35.55","CheckOutDescription":"KAR-LT-M21053B\\MS Project Server Chandler","CheckOutId":"00000000-0000-0000-0000-000000000000","CreatedDate":"2018-07-03T01:58:58.84","Id":"d0d6f350-9f7e-e811-8cd0-0028f8246d86","IsCheckedOut":false,"LastPublishedDate":"2019-03-14T02:00:59.937","LastSavedDate":"2019-03-14T02:00:52.46","OptimizerDecision":0,"PlannerDecision":0,"ProjectType":0,"Name":"K2L OptoLyzer Studio 1_6 Dev","WinprojVersion":"14.1550850000"}};
    var project = Project.create(data["d"]);

    _checkProject(project);
    _checkDeferredProperties(project);
  });

  test('fetch single Project online', () async {
    var uri = Uri.parse("http://chn-vm-projsrv/pwa/_api/ProjectServer/Projects('d0d6f350-9f7e-e811-8cd0-0028f8246d86')");
    final server = Server(url: serverUrl, username: username, password: password);
    var data = await server.fetchData(uri);

    var project = Project.create(data["d"]);
    _checkProject(project);
    _checkDeferredProperties(project);

    //await project.loadDeferredProperties(server, false);
    await project.owner.fetchDataIfDeferred(server);
    _checkProject(project);
    _checkUndeferredProperties(project);
  });

  test('fetch Projects online', () async {
    final server = Server(url: serverUrl, username: username, password: password);
    var projects = await server.fetchProjects();
    expect(projects, isNotNull);
    expect(projects, isNotEmpty);

    var project = projects.where((p) => p.name == "K2L OptoLyzer Studio 1_6 Dev").first;
    _checkProject(project);
    print(project.uri.toString());


//    int i = 0;
//    for (var project in projects) {
//      print("$i: ${project.name}, ${project is PublishedProject}");
//      i++;
//    }
  });
}

void _checkProject(Project project) {
  expect(project, isNotNull);
  expect(project is PublishedProject, isTrue);
  expect(project.uri.toString(), equals("http://chn-vm-projsrv/pwa/_api/ProjectServer/Projects('d0d6f350-9f7e-e811-8cd0-0028f8246d86')"));

  expect(project.approvedEnd.toIso8601String(), equals("0001-01-01T00:00:00.000"));
  expect(project.approvedStart.toIso8601String(), equals("0001-01-01T00:00:00.000"));
  expect(project.checkedOutDate.toIso8601String(), equals("2019-03-14T01:57:35.550"));
  expect(project.checkOutDescription, equals("KAR-LT-M21053B\\MS Project Server Chandler"));
  expect(project.checkOutId, equals("00000000-0000-0000-0000-000000000000"));
  expect(project.createdDate.toIso8601String(), equals("2018-07-03T01:58:58.840"));
  expect(project.isCheckedOut, isFalse);
  expect(project.lastPublishedDate.toIso8601String(), equals("2019-03-14T02:00:59.937"));
  expect(project.lastSavedDate.toIso8601String(), equals("2019-03-14T02:00:52.460"));
  expect(project.name, equals("K2L OptoLyzer Studio 1_6 Dev"));
  expect(project.optimizerDecision, equals(0));
  expect(project.plannerDecision, equals(0));
  expect(project.projectType, equals(0));
  expect(project.winprojVersion, equals("14.1550850000"));
}

void _checkDeferredProperties(Project project) {
  expect(project.owner.isDeferred, isTrue);
  expect(project.owner.value, isNull);
}

void _checkUndeferredProperties(Project project) {
  expect(project.owner.isDeferred, isFalse);
  expect(project.owner.value.title, isNotNull);
}
