
import 'package:project_server/project_server.dart';

class Project extends PsObject {
  Project();

  Project.fromJson(Map<String, dynamic> json) {
    initFromJson(json);
  }

  factory Project.create(Map<String, dynamic> json) {
    var project = Project();
    project.initFromJson(json);
    if (project.isDeferred) {
      return project;
    }

    if (project.metaData.type == "PS.PublishedProject") {
      return PublishedProject.fromJson(json);
    } else {
      assert(project.metaData.type == "PS.DraftProject");
      return DraftProject.fromJson(json);
    }
  }

  DateTime approvedEnd;
  DateTime approvedStart;
  DeferredObject<PsObjectInstance> assignments;
  DeferredObject<PsObjectInstance> calendar;
  DeferredObject<PsObjectInstance> checkedOutBy;
  DateTime checkedOutDate;
  String checkOutDescription;
  String checkOutId;
  DateTime createdDate;
  PsObjectInstance customFields;
  PsObjectInstance draft;
  PsObjectInstance enterpriseProjectType;
  PsObjectInstance includeCustomFields;
  bool isCheckedOut;
  DateTime lastPublishedDate;
  DateTime lastSavedDate;
  String name;
  int optimizerDecision;
  DeferredObject<User> owner;
  PsObjectInstance phase;
  int plannerDecision;
  PsObjectInstance projectResources;
  int projectType;
  PsObjectInstance queueJobs;
  PsObjectInstance stage;
  PsObjectInstance taskLinks;
  DeferredObject<TaskCollection> tasks;
  String winprojVersion;

  @override
  void initFromJson(Map<String, dynamic> json) {
    super.initFromJson(json);

    approvedEnd = DateTime.parse(json["ApprovedEnd"] as String);
    approvedStart = DateTime.parse(json["ApprovedStart"] as String);
    assignments = DeferredObject<PsObjectInstance>(PsObjectInstance(), json["Assignments"]);
    calendar = DeferredObject<PsObjectInstance>(PsObjectInstance(), json["Calendar"]);
    checkedOutBy = DeferredObject<PsObjectInstance>(PsObjectInstance(), json["CheckedOutBy"]);
    checkedOutDate = DateTime.parse(json["CheckedOutDate"] as String);
    checkOutDescription = json["CheckOutDescription"] as String;
    checkOutId = json["CheckOutId"] as String;
    createdDate = DateTime.parse(json["CreatedDate"] as String);

    isCheckedOut = json["IsCheckedOut"] as bool;
    lastPublishedDate = DateTime.parse(json["LastPublishedDate"] as String);
    lastSavedDate = DateTime.parse(json["LastSavedDate"] as String);
    name = json["Name"] as String;
    optimizerDecision = json["OptimizerDecision"] as int;
    owner = DeferredObject<User>(User(), json["Owner"]);

    plannerDecision = json["PlannerDecision"] as int;

    projectType = json["ProjectType"] as int;

    tasks = DeferredObject<TaskCollection>(TaskCollection(), json["Tasks"]);
    winprojVersion = json["WinprojVersion"] as String;
  }
}