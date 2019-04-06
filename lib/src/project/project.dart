
import 'package:project_server/project_server.dart';

class Project extends PsObject {
  Project(Map<String, dynamic> json)
      : super(json) {
    if (isDeferred) {
      return;
    }

    approvedEnd = DateTime.parse(json["ApprovedEnd"] as String);
    approvedStart = DateTime.parse(json["ApprovedStart"] as String);

    name = json["Name"] as String;

    owner = User(json["Owner"]);
  }

  factory Project.create(Map<String, dynamic> json) {
    var project = Project(json);
    if (project.isDeferred) {
      return project;
    }

    if (project.metaData.type == "PS.PublishedProject") {
      return PublishedProject(json);
    } else {
      assert(project.metaData.type == "PS.DraftProject");
      return DraftProject(json);
    }
  }

  DateTime approvedEnd;
  DateTime approvedStart;

  String name;

  User owner;

  @override
  Future loadDeferredProperties(Server server, bool recursive) async {
    if (owner.isDeferred) {
      var data = await server.fetchData(owner.uri);
      owner = User(data["d"]);
      if (recursive) {
        owner.loadDeferredProperties(server, recursive);
      }
    }
  }
}