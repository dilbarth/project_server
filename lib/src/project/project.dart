
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
  DeferredObject<User> checkedOutBy;
  DateTime checkedOutDate;
  String checkOutDescription;
  String checkOutId;
  DateTime createdDate;
  DeferredObject<PsObjectInstance> customFields;
  DeferredObject<PsObjectInstance> enterpriseProjectType;
  DeferredObject<PsObjectInstance> includeCustomFields;
  bool isCheckedOut;
  DateTime lastPublishedDate;
  DateTime lastSavedDate;
  String name;
  int optimizerDecision;
  DeferredObject<User> owner;
  DeferredObject<PsObjectInstance> phase;
  int plannerDecision;
  DeferredObject<PsObjectInstance> projectResources;
  int projectType;
  DeferredObject<PsObjectInstance> queueJobs;
  DeferredObject<PsObjectInstance> stage;
  DeferredObject<PsObjectInstance> taskLinks;
  DeferredObject<PsObjectCollection<Task>> tasks;
  String winprojVersion;

  @override
  void initFromJson(Map<String, dynamic> json) {
    super.initFromJson(json);

    approvedEnd = DateTime.parse(json["ApprovedEnd"] as String);
    approvedStart = DateTime.parse(json["ApprovedStart"] as String);
    assignments = DeferredObject<PsObjectInstance>(() => PsObjectInstance(), json["Assignments"]);
    calendar = DeferredObject<PsObjectInstance>(() => PsObjectInstance(), json["Calendar"]);
    checkedOutBy = DeferredObject<User>(() => User(), json["CheckedOutBy"]);
    checkedOutDate = DateTime.parse(json["CheckedOutDate"] as String);
    checkOutDescription = json["CheckOutDescription"] as String;
    checkOutId = json["CheckOutId"] as String;
    createdDate = DateTime.parse(json["CreatedDate"] as String);
    customFields = DeferredObject<PsObjectInstance>(() => PsObjectInstance(), json["CustomFields"]);
    enterpriseProjectType = DeferredObject<PsObjectInstance>(() => PsObjectInstance(), json["EnterpriseProjectType"]);
    includeCustomFields = DeferredObject<PsObjectInstance>(() => PsObjectInstance(), json["IncludeCustomFields"]);
    isCheckedOut = json["IsCheckedOut"] as bool;
    lastPublishedDate = DateTime.parse(json["LastPublishedDate"] as String);
    lastSavedDate = DateTime.parse(json["LastSavedDate"] as String);
    name = json["Name"] as String;
    optimizerDecision = json["OptimizerDecision"] as int;
    owner = DeferredObject<User>(() => User(), json["Owner"]);
    phase = DeferredObject<PsObjectInstance>(() => PsObjectInstance(), json["Phase"]);
    plannerDecision = json["PlannerDecision"] as int;
    projectResources = DeferredObject<PsObjectInstance>(() => PsObjectInstance(), json["ProjectResources"]);
    projectType = json["ProjectType"] as int;
    queueJobs = DeferredObject<PsObjectInstance>(() => PsObjectInstance(), json["QueueJobs"]);
    stage = DeferredObject<PsObjectInstance>(() => PsObjectInstance(), json["Stage"]);
    taskLinks = DeferredObject<PsObjectInstance>(() => PsObjectInstance(), json["TaskLinks"]);
    tasks = DeferredObject<PsObjectCollection<Task>>(
            () => PsObjectCollection<Task>((j) => Task.fromJson(j)),
            json["Tasks"]
    );
    winprojVersion = json["WinprojVersion"] as String;
  }

  @override
  Map<String, dynamic> toJson() {
    var json = <String, dynamic> {
      'ApprovedEnd': approvedEnd.toIso8601String(),
      'ApprovedStart': approvedStart.toIso8601String(),
      'Assignments': assignments.toJson(),
      'Calendar': calendar.toJson(),
      'CheckedOutBy': checkedOutBy.toJson(),
      'CheckedOutDate': checkedOutDate.toIso8601String(),
      'CheckOutDescription': checkOutDescription,
      'CheckOutId': checkOutId,
      'CreatedDate': createdDate.toIso8601String(),
      'CustomFields': customFields.toJson(),
      'EnterpriseProjectType': enterpriseProjectType.toJson(),
      'IncludeCustomFields': includeCustomFields.toJson(),
      'IsCheckedOut': isCheckedOut,
      'LastPublishedDate': lastPublishedDate.toIso8601String(),
      'LastSavedDate': lastSavedDate.toIso8601String(),
      'Name': name,
      'OptimizerDecision': optimizerDecision,
      'Owner': owner.toJson(),
      'Phase': phase.toJson(),
      'PlannerDecision': plannerDecision,
      'ProjectResources': projectResources.toJson(),
      'ProjectType': projectType,
      'QueueJobs': queueJobs.toJson(),
      'Stage': stage.toJson(),
      'TaskLinks': taskLinks.toJson(),
      'Tasks': tasks.toJson(),
      'WinprojVersion': winprojVersion,
    };

    json.addAll(super.toJson());

    return json;
  }
}