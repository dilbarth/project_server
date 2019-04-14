
import 'package:flutter_test/flutter_test.dart';

import 'package:project_server/project_server.dart';

import '../common.dart';

void main() {

  /// K2L OptoLyzer Studio 1_6 Dev: d0d6f350-9f7e-e811-8cd0-0028f8246d86
  test('get single Project from JSON (checked out)', () async {
    var data = {"d":{"__metadata":{"id":"ProjectServer/Projects('d0d6f350-9f7e-e811-8cd0-0028f8246d86')","uri":"http://chn-vm-projsrv/pwa/_api/ProjectServer/Projects('d0d6f350-9f7e-e811-8cd0-0028f8246d86')","type":"PS.PublishedProject"},"CheckedOutBy":{"__deferred":{"uri":"http://chn-vm-projsrv/pwa/_api/ProjectServer/Projects('d0d6f350-9f7e-e811-8cd0-0028f8246d86')/CheckedOutBy"}},"CustomFields":{"__deferred":{"uri":"http://chn-vm-projsrv/pwa/_api/ProjectServer/Projects('d0d6f350-9f7e-e811-8cd0-0028f8246d86')/CustomFields"}},"EnterpriseProjectType":{"__deferred":{"uri":"http://chn-vm-projsrv/pwa/_api/ProjectServer/Projects('d0d6f350-9f7e-e811-8cd0-0028f8246d86')/EnterpriseProjectType"}},"Phase":{"__deferred":{"uri":"http://chn-vm-projsrv/pwa/_api/ProjectServer/Projects('d0d6f350-9f7e-e811-8cd0-0028f8246d86')/Phase"}},"QueueJobs":{"__deferred":{"uri":"http://chn-vm-projsrv/pwa/_api/ProjectServer/Projects('d0d6f350-9f7e-e811-8cd0-0028f8246d86')/QueueJobs"}},"Stage":{"__deferred":{"uri":"http://chn-vm-projsrv/pwa/_api/ProjectServer/Projects('d0d6f350-9f7e-e811-8cd0-0028f8246d86')/Stage"}},"Assignments":{"__deferred":{"uri":"http://chn-vm-projsrv/pwa/_api/ProjectServer/Projects('d0d6f350-9f7e-e811-8cd0-0028f8246d86')/Assignments"}},"Calendar":{"__deferred":{"uri":"http://chn-vm-projsrv/pwa/_api/ProjectServer/Projects('d0d6f350-9f7e-e811-8cd0-0028f8246d86')/Calendar"}},"Draft":{"__deferred":{"uri":"http://chn-vm-projsrv/pwa/_api/ProjectServer/Projects('d0d6f350-9f7e-e811-8cd0-0028f8246d86')/Draft"}},"IncludeCustomFields":{"__deferred":{"uri":"http://chn-vm-projsrv/pwa/_api/ProjectServer/Projects('d0d6f350-9f7e-e811-8cd0-0028f8246d86')/IncludeCustomFields"}},"Owner":{"__deferred":{"uri":"http://chn-vm-projsrv/pwa/_api/ProjectServer/Projects('d0d6f350-9f7e-e811-8cd0-0028f8246d86')/Owner"}},"ProjectResources":{"__deferred":{"uri":"http://chn-vm-projsrv/pwa/_api/ProjectServer/Projects('d0d6f350-9f7e-e811-8cd0-0028f8246d86')/ProjectResources"}},"TaskLinks":{"__deferred":{"uri":"http://chn-vm-projsrv/pwa/_api/ProjectServer/Projects('d0d6f350-9f7e-e811-8cd0-0028f8246d86')/TaskLinks"}},"Tasks":{"__deferred":{"uri":"http://chn-vm-projsrv/pwa/_api/ProjectServer/Projects('d0d6f350-9f7e-e811-8cd0-0028f8246d86')/Tasks"}},"ApprovedEnd":"0001-01-01T00:00:00","ApprovedStart":"0001-01-01T00:00:00","CheckedOutDate":"2019-04-10T06:43:57.69","CheckOutDescription":"KAR-LT-M21053B\\MS Project Server Chandler","CheckOutId":"6c34472d-602b-e711-8c39-0028f8246d86","CreatedDate":"2018-07-03T01:58:58.84","Id":"d0d6f350-9f7e-e811-8cd0-0028f8246d86","IsCheckedOut":true,"LastPublishedDate":"2019-03-14T02:00:59.937","LastSavedDate":"2019-03-14T02:00:52.46","OptimizerDecision":0,"PlannerDecision":0,"ProjectType":0,"Name":"K2L OptoLyzer Studio 1_6 Dev","WinprojVersion":"14.1550850000"}};
    var project = Project.create(data["d"]);

    _checkProject(project);
    _checkDeferredProperties(project);
  });

  /// K2L OptoLyzer Studio 1_6_1 Dev: 8397cb15-8020-e911-8d18-0028f8246d86
  test('get single Project from JSON (not checked out)', () async {
    var data = {"d":{"__metadata":{"id":"ProjectServer/Projects('8397cb15-8020-e911-8d18-0028f8246d86')","uri":"http://chn-vm-projsrv/pwa/_api/ProjectServer/Projects('8397cb15-8020-e911-8d18-0028f8246d86')","type":"PS.PublishedProject"},"CheckedOutBy":{"__deferred":{"uri":"http://chn-vm-projsrv/pwa/_api/ProjectServer/Projects('8397cb15-8020-e911-8d18-0028f8246d86')/CheckedOutBy"}},"CustomFields":{"__deferred":{"uri":"http://chn-vm-projsrv/pwa/_api/ProjectServer/Projects('8397cb15-8020-e911-8d18-0028f8246d86')/CustomFields"}},"EnterpriseProjectType":{"__deferred":{"uri":"http://chn-vm-projsrv/pwa/_api/ProjectServer/Projects('8397cb15-8020-e911-8d18-0028f8246d86')/EnterpriseProjectType"}},"Phase":{"__deferred":{"uri":"http://chn-vm-projsrv/pwa/_api/ProjectServer/Projects('8397cb15-8020-e911-8d18-0028f8246d86')/Phase"}},"QueueJobs":{"__deferred":{"uri":"http://chn-vm-projsrv/pwa/_api/ProjectServer/Projects('8397cb15-8020-e911-8d18-0028f8246d86')/QueueJobs"}},"Stage":{"__deferred":{"uri":"http://chn-vm-projsrv/pwa/_api/ProjectServer/Projects('8397cb15-8020-e911-8d18-0028f8246d86')/Stage"}},"Assignments":{"__deferred":{"uri":"http://chn-vm-projsrv/pwa/_api/ProjectServer/Projects('8397cb15-8020-e911-8d18-0028f8246d86')/Assignments"}},"Calendar":{"__deferred":{"uri":"http://chn-vm-projsrv/pwa/_api/ProjectServer/Projects('8397cb15-8020-e911-8d18-0028f8246d86')/Calendar"}},"Draft":{"__deferred":{"uri":"http://chn-vm-projsrv/pwa/_api/ProjectServer/Projects('8397cb15-8020-e911-8d18-0028f8246d86')/Draft"}},"IncludeCustomFields":{"__deferred":{"uri":"http://chn-vm-projsrv/pwa/_api/ProjectServer/Projects('8397cb15-8020-e911-8d18-0028f8246d86')/IncludeCustomFields"}},"Owner":{"__deferred":{"uri":"http://chn-vm-projsrv/pwa/_api/ProjectServer/Projects('8397cb15-8020-e911-8d18-0028f8246d86')/Owner"}},"ProjectResources":{"__deferred":{"uri":"http://chn-vm-projsrv/pwa/_api/ProjectServer/Projects('8397cb15-8020-e911-8d18-0028f8246d86')/ProjectResources"}},"TaskLinks":{"__deferred":{"uri":"http://chn-vm-projsrv/pwa/_api/ProjectServer/Projects('8397cb15-8020-e911-8d18-0028f8246d86')/TaskLinks"}},"Tasks":{"__deferred":{"uri":"http://chn-vm-projsrv/pwa/_api/ProjectServer/Projects('8397cb15-8020-e911-8d18-0028f8246d86')/Tasks"}},"ApprovedEnd":"0001-01-01T00:00:00","ApprovedStart":"0001-01-01T00:00:00","CheckedOutDate":"2019-04-10T08:27:36.24","CheckOutDescription":"KAR-LT-M21053B\\MS Project Server Chandler","CheckOutId":"00000000-0000-0000-0000-000000000000","CreatedDate":"2019-01-25T02:03:47.82","Id":"8397cb15-8020-e911-8d18-0028f8246d86","IsCheckedOut":false,"LastPublishedDate":"2019-04-10T08:36:15.417","LastSavedDate":"2019-04-10T08:36:05.55","OptimizerDecision":0,"PlannerDecision":0,"ProjectType":0,"Name":"K2L OptoLyzer Studio 1_6_1 Dev","WinprojVersion":"14.1550850000"}};
    var project = Project.create(data["d"]);

    expect(project.checkOutId, equals("00000000-0000-0000-0000-000000000000"));
    expect(project.isCheckedOut, isFalse);
  });

  /// K2L OptoLyzer Studio 1_6 Dev: d0d6f350-9f7e-e811-8cd0-0028f8246d86
  test('fetch single Project online', () async {
    var uri = Uri.parse("http://chn-vm-projsrv/pwa/_api/ProjectServer/Projects('d0d6f350-9f7e-e811-8cd0-0028f8246d86')");
    final server = Server(url: serverUrl, username: username, password: password);
    var data = await server.fetchData(uri);

    var project = Project.create(data["d"]);
    _checkProject(project);
    _checkDeferredProperties(project);

    var json = project.toJson();
    var projectFromJson = Project.create(json);
    _checkProject(projectFromJson);
    _checkDeferredProperties(projectFromJson);

    //await project.assignments.fetchDataIfDeferred(server);
    //await project.calendar.fetchDataIfDeferred(server); // GeneralSecurityAccessDenied
    await project.checkedOutBy.fetchDataIfDeferred(server);
    //await project.customFields.fetchDataIfDeferred(server);
    //await project.enterpriseProjectType.fetchDataIfDeferred(server);  // GeneralSecurityAccessDenied
    //await project.includeCustomFields.fetchDataIfDeferred(server);
    await project.owner.fetchDataIfDeferred(server);
    //await project.phase.fetchDataIfDeferred(server);
    //await project.projectResources.fetchDataIfDeferred(server);
    //await project.queueJobs.fetchDataIfDeferred(server);
    //await project.stage.fetchDataIfDeferred(server);
    await project.taskLinks.fetchDataIfDeferred(server); // Todo
    await project.tasks.fetchDataIfDeferred(server);

    var published = project as PublishedProject;
    expect(published, isNotNull);
    await published.draft.fetchDataIfDeferred(server);
    expect(published.draft.value is DraftProject, isTrue);

    _checkProject(project);
    _checkUndeferredProperties(project);

    json = project.toJson();
    projectFromJson = Project.create(json);
    _checkProject(projectFromJson);
    _checkUndeferredProperties(projectFromJson);
  });

  /// Test can be used to get the JSON data for the specified projects.
  test('fetch Projects online', () async {
    final server = Server(url: serverUrl, username: username, password: password);
    var projects = await server.fetchProjects();
    expect(projects, isNotNull);
    expect(projects, isNotEmpty);

    var project = projects.where((p) => p.name == "K2L OptoLyzer Studio 1_6 Dev").first;
    expect(project, isNotNull);
    print("\n${project.name}: ${project.id}");
    print(project.uri.toString());
    var data = await server.fetchData(project.uri);

    project = projects.where((p) => p.name == "K2L OptoLyzer Studio 1_6_1 Dev").first;
    expect(project, isNotNull);
    print("\n${project.name}: ${project.id}");
    print(project.uri.toString());
    data = await server.fetchData(project.uri);

    //await project.draft.fetchDataIfDeferred(server);
    print(data);

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
  expect(project.checkedOutDate.toIso8601String(), equals("2019-04-10T06:43:57.690"));
  expect(project.checkOutDescription, equals("KAR-LT-M21053B\\MS Project Server Chandler"));
  expect(project.checkOutId, equals("6c34472d-602b-e711-8c39-0028f8246d86"));
  expect(project.createdDate.toIso8601String(), equals("2018-07-03T01:58:58.840"));
  expect(project.isCheckedOut, isTrue);
  expect(project.lastPublishedDate.toIso8601String(), equals("2019-03-14T02:00:59.937"));
  expect(project.lastSavedDate.toIso8601String(), equals("2019-03-14T02:00:52.460"));
  expect(project.name, equals("K2L OptoLyzer Studio 1_6 Dev"));
  expect(project.optimizerDecision, equals(0));
  expect(project.plannerDecision, equals(0));
  expect(project.projectType, equals(0));
  expect(project.winprojVersion, equals("14.1550850000"));
}

void _checkDeferredProperties(Project project) {
  expect(project.assignments.isDeferred, isTrue);
  expect(project.calendar.isDeferred, isTrue);
  expect(project.checkedOutBy.isDeferred, isTrue);
  expect(project.customFields.isDeferred, isTrue);
  expect(project.enterpriseProjectType.isDeferred, isTrue);
  expect(project.includeCustomFields.isDeferred, isTrue);
  expect(project.owner.isDeferred, isTrue);
  expect(project.phase.isDeferred, isTrue);
  expect(project.projectResources.isDeferred, isTrue);
  expect(project.queueJobs.isDeferred, isTrue);
  expect(project.stage.isDeferred, isTrue);
  expect(project.taskLinks.isDeferred, isTrue);
  expect(project.tasks.isDeferred, isTrue);

  expect(project.owner.value, isNull);
  expect(project.owner.uri.toString(), equals("http://chn-vm-projsrv/pwa/_api/ProjectServer/Projects('d0d6f350-9f7e-e811-8cd0-0028f8246d86')/Owner"));

  var publishedProject = project as PublishedProject;
  if (publishedProject != null) {
    expect(publishedProject.draft.isDeferred, isTrue);
  }
}

void _checkUndeferredProperties(Project project) {
  expect(project.checkedOutBy.isDeferred, isFalse);
  expect(project.checkedOutBy.value is User, isTrue);
  expect(project.checkedOutBy.value.title, equals("Martin Barth - M21053"));

  expect(project.owner.isDeferred, isFalse);
  expect(project.owner.value is User, isTrue);
  expect(project.owner.value.title, equals("Martin Barth - M21053"));

  expect(project.tasks.isDeferred, isFalse);
  expect(project.tasks.value is PsObjectCollection<Task>, isTrue);
  expect(project.tasks.value.items.length, equals(116));
  expect(project.tasks.value.items[0].name, equals("Dependency on"));
  expect(project.tasks.value.items[115].name, equals("BMO2"));

  var published = project as PublishedProject;
  if (published != null) {
    expect(published.draft.isDeferred, isFalse);
    var draft = published.draft?.value;
    expect(draft, isNotNull);
    expect(draft.id, equals(project.id));
    expect(draft.name, equals(project.name));
  }
}
