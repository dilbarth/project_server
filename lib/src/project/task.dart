
import 'package:project_server/project_server.dart';

class Task extends PsObject {
  Task();

  @override
  Task.fromJson(Map<String, dynamic> json) {
    initFromJson(json);
  }

  int actualCost;
  int actualCostWorkPerformed;
  String actualDuration;
  int actualDurationMilliseconds;
  String actualDurationTimeSpan;
  DateTime actualFinish;
  int actualOvertimeCost;
  String actualOvertimeWork;
  int actualOvertimeWorkMilliseconds;
  String actualOvertimeWorkTimeSpan;
  DateTime actualStart;
  String actualWork;
  int actualWorkMilliseconds;
  String actualWorkTimeSpan;
  DeferredObject<PsObjectInstance> assignments;
  int baselineCost;
  String baselineDuration;
  int baselineDurationMilliseconds;
  String baselineDurationTimeSpan;
  DateTime baselineFinish;
  DateTime baselineStart;
  String baselineWork;
  int baselineWorkMilliseconds;
  String baselineWorkTimeSpan;
  int budgetCost;
  int budgetedCostWorkPerformed;
  int budgetedCostWorkScheduled;
  String budgetWork;
  int budgetWorkMilliseconds;
  String budgetWorkTimeSpan;
  DeferredObject<PsObjectInstance> calendar;
  DateTime completion;
  DateTime constraintStartEnd;
  int constraintType;
  String contact;
  int cost;
  int costPerformanceIndex;
  int costVariance;
  int costVarianceAtCompletion;
  int costVariancePercentage;
  DateTime created;
  // Todo; Custom_ ...
  DeferredObject<PsObjectInstance> customFields;
  DateTime deadline;
  String duration;
  int durationMilliseconds;
  String durationTimeSpan;
  String durationVariance;
  int durationVarianceMilliseconds;
  String durationVarianceTimeSpan;
  DateTime earliestFinish;
  DateTime earliestStart;
  int estimateAtCompletion;
  DateTime finish;
  String finishSlack;
  int finishSlackMilliseconds;
  String finishSlackTimeSpan;
  String finishVariance;
  int finishVarianceMilliseconds;
  String finishVarianceTimeSpan;
  int fixedCost;
  int fixedCostAccrual;
  String freeSlack;
  int freeSlackMilliseconds;
  String freeSlackTimeSpan;
  bool isActive;
  bool isCritical;
  bool isEffortDriven;
  bool isExternalTask;
  bool isLockedByManager;
  bool isManual;
  bool isMarked;
  bool isMilestone;
  bool isOverAllocated;
  bool isRecurring;
  bool isRecurringSummary;
  bool isRolledUp;
  bool isSubProject;
  bool isSubProjectReadOnly;
  bool isSubProjectScheduledFromFinish;
  bool isSummary;
  DateTime latestFinish;
  DateTime latestStart;
  bool levelingAdjustsAssignments;
  bool levelingCanSplit;
  String levelingDelay;
  int levelingDelayMilliseconds;
  String levelingDelayTimeSpan;
  DateTime modified;
  String name;
  String notes;
  int outlineLevel;
  String outlinePosition;
  int overtimeCost;
  String overtimeWork;
  int overtimeWorkMilliseconds;
  String overtimeWorkTimeSpan;
  DeferredObject<PsObjectInstance> parent;
  int percentComplete;
  int percentPhysicalWorkComplete;
  int percentWorkComplete;
  DeferredObject<PsObjectInstance> predecessors;
  DateTime preLevelingFinish;
  DateTime preLevelingStart;
  int priority;
  String regularWork;
  int regularWorkMilliseconds;
  String regularWorkTimeSpan;
  int remainingCost;
  String remainingDuration;
  int remainingDurationMilliseconds;
  String remainingDurationTimeSpan;
  int remainingOvertimeCost;
  String remainingOvertimeWork;
  int remainingOvertimeWorkMilliseconds;
  String remainingOvertimeWorkTimeSpan;
  String remainingWork;
  int remainingWorkMilliseconds;
  String remainingWorkTimeSpan;
  DateTime resume;
  int scheduleCostVariance;
  String scheduledDuration;
  int scheduledDurationMilliseconds;
  String scheduledDurationTimeSpan;
  DateTime scheduledFinish;
  DateTime scheduledStart;
  int schedulePerformanceIndex;
  int scheduleVariancePercentage;
  DateTime start;
  String startSlack;
  int startSlackMilliseconds;
  String startSlackTimeSpan;
  String startVariance;
  int startVarianceMilliseconds;
  String startVarianceTimeSpan;
  DateTime stop;
  DeferredObject<PsObjectInstance> subProject;
  DeferredObject<PsObjectInstance> successors;
  int taskType;
  int toCompletePerformanceIndex;
  String totalSlack;
  int totalSlackMilliseconds;
  String totalSlackTimeSpan;
  bool usePercentPhysicalWorkComplete;
  String work;
  String workBreakdownStructure;
  int workMilliseconds;
  String workTimeSpan;
  String workVariance;
  int workVarianceMilliseconds;
  String workVarianceTimeSpan;


  @override
  void initFromJson(Map<String, dynamic> json) {
    super.initFromJson(json);

    actualCost = json["ActualCost"] as int;
    actualCostWorkPerformed = json["ActualCostWorkPerformed"] as int;
    actualDuration = json["ActualDuration"] as String;
    actualDurationMilliseconds = json["ActualDurationMilliseconds"] as int;
    actualDurationTimeSpan = json["ActualDurationTimeSpan"] as String;
    actualFinish = DateTime.parse(json["ActualFinish"] as String);
    actualOvertimeCost = json["ActualOvertimeCost"] as int;
    actualOvertimeWork = json["ActualOvertimeWork"] as String;
    actualOvertimeWorkMilliseconds = json["ActualOvertimeWorkMilliseconds"] as int;
    actualOvertimeWorkTimeSpan = json["ActualOvertimeWorkTimeSpan"] as String;
    actualStart = DateTime.parse(json["ActualStart"] as String);
    actualWork = json["ActualWork"] as String;
    actualWorkMilliseconds = json["ActualWorkMilliseconds"] as int;
    actualWorkTimeSpan = json["ActualWorkTimeSpan"] as String;
    baselineCost = json["BaselineCost"] as int;
    baselineDuration = json["BaselineDuration"] as String;
    baselineDurationMilliseconds = json["BaselineDurationMilliseconds"] as int;
    baselineDurationTimeSpan = json["BaselineDurationTimeSpan"] as String;
    baselineFinish = DateTime.parse(json["BaselineFinish"] as String);
    baselineStart = DateTime.parse(json["BaselineStart"] as String);
    baselineWork = json["BaselineWork"] as String;
    baselineWorkMilliseconds = json["BaselineWorkMilliseconds"] as int;
    baselineWorkTimeSpan = json["BaselineWorkTimeSpan"] as String;
    budgetCost = json["BudgetCost"] as int;
    budgetedCostWorkPerformed = json["BudgetedCostWorkPerformed"] as int;
    budgetedCostWorkScheduled = json["BudgetedCostWorkScheduled"] as int;
    budgetWork = json["BudgetWork"] as String;
    budgetWorkMilliseconds = json["BudgetWorkMilliseconds"] as int;
    budgetWorkTimeSpan = json["BudgetWorkTimeSpan"] as String;
    completion = DateTime.parse(json["Completion"] as String);
    constraintStartEnd = DateTime.parse(json["ConstraintStartEnd"] as String);
    constraintType = json["ConstraintType"] as int;
    contact = json["Contact"] as String;
    cost = json["Cost"] as int;
    costPerformanceIndex = json["CostPerformanceIndex"] as int;
    costVariance = json["CostVariance"] as int;
    costVarianceAtCompletion = json["CostVarianceAtCompletion"] as int;
    costVariancePercentage = json["CostVariancePercentage"] as int;
    created = DateTime.parse(json["Created"] as String);
    deadline = DateTime.parse(json["Deadline"] as String);
    duration = json["Duration"] as String;
    durationMilliseconds = json["DurationMilliseconds"] as int;
    durationTimeSpan = json["DurationTimeSpan"] as String;
    durationVariance = json["DurationVariance"] as String;
    durationVarianceMilliseconds = json["DurationVarianceMilliseconds"] as int;
    durationVarianceTimeSpan = json["DurationVarianceTimeSpan"] as String;
    earliestFinish = DateTime.parse(json["EarliestFinish"] as String);
    earliestStart = DateTime.parse(json["EarliestStart"] as String);
    estimateAtCompletion = json["EstimateAtCompletion"] as int;
    finish = DateTime.parse(json["Finish"] as String);
    finishSlack = json["FinishSlack"] as String;
    finishSlackMilliseconds = json["FinishSlackMilliseconds"] as int;
    finishSlackTimeSpan = json["FinishSlackTimeSpan"] as String;
    finishVariance = json["FinishVariance"] as String;
    finishVarianceMilliseconds = json["FinishVarianceMilliseconds"] as int;
    finishVarianceTimeSpan = json["FinishVarianceTimeSpan"] as String;
    fixedCost = json["FixedCost"] as int;
    fixedCostAccrual = json["FixedCostAccrual"] as int;
    freeSlack = json["FreeSlack"] as String;
    freeSlackMilliseconds = json["FreeSlackMilliseconds"] as int;
    freeSlackTimeSpan = json["FreeSlackTimeSpan"] as String;
    isActive = json["IsActive"] as bool;
    isCritical = json["IsCritical"] as bool;
    isEffortDriven = json["IsEffortDriven"] as bool;
    isExternalTask = json["IsExternalTask"] as bool;
    isLockedByManager = json["IsLockedByManager"] as bool;
    isManual = json["IsManual"] as bool;
    isMarked = json["IsMarked"] as bool;
    isMilestone = json["IsMilestone"] as bool;
    isOverAllocated = json["IsOverAllocated"] as bool;
    isRecurring = json["IsRecurring"] as bool;
    isRecurringSummary = json["IsRecurringSummary"] as bool;
    isRolledUp = json["IsRolledUp"] as bool;
    isSubProject = json["IsSubProject"] as bool;
    isSubProjectReadOnly = json["IsSubProjectReadOnly"] as bool;
    isSubProjectScheduledFromFinish = json["IsSubProjectScheduledFromFinish"] as bool;
    isSummary = json["IsSummary"] as bool;
    latestFinish = DateTime.parse(json["LatestFinish"] as String);
    latestStart = DateTime.parse(json["LatestStart"] as String);
    levelingAdjustsAssignments = json["LevelingAdjustsAssignments"] as bool;
    levelingCanSplit = json["LevelingCanSplit"] as bool;
    levelingDelay = json["LevelingDelay"] as String;
    levelingDelayMilliseconds = json["LevelingDelayMilliseconds"] as int;
    levelingDelayTimeSpan = json["LevelingDelayTimeSpan"] as String;
    modified = DateTime.parse(json["Modified"] as String);
    name = json["Name"] as String;
    notes = json["Notes"] as String;
    outlineLevel = json["OutlineLevel"] as int;
    outlinePosition = json["OutlinePosition"] as String;
    overtimeCost = json["OvertimeCost"] as int;
    overtimeWork = json["OvertimeWork"] as String;
    overtimeWorkMilliseconds = json["OvertimeWorkMilliseconds"] as int;
    overtimeWorkTimeSpan = json["OvertimeWorkTimeSpan"] as String;
    percentComplete = json["PercentComplete"] as int;
    percentPhysicalWorkComplete = json["PercentPhysicalWorkComplete"] as int;
    percentWorkComplete = json["PercentWorkComplete"] as int;
    preLevelingFinish = DateTime.parse(json["PreLevelingFinish"] as String);
    preLevelingStart = DateTime.parse(json["PreLevelingStart"] as String);
    priority = json["Priority"] as int;
    regularWork = json["RegularWork"] as String;
    regularWorkMilliseconds = json["RegularWorkMilliseconds"] as int;
    regularWorkTimeSpan = json["RegularWorkTimeSpan"] as String;
    remainingCost = json["RemainingCost"] as int;
    remainingDuration = json["RemainingDuration"] as String;
    remainingDurationMilliseconds = json["RemainingDurationMilliseconds"] as int;
    remainingDurationTimeSpan = json["RemainingDurationTimeSpan"] as String;
    remainingOvertimeCost = json["RemainingOvertimeCost"] as int;
    remainingOvertimeWork = json["RemainingOvertimeWork"] as String;
    remainingOvertimeWorkMilliseconds = json["RemainingOvertimeWorkMilliseconds"] as int;
    remainingOvertimeWorkTimeSpan = json["RemainingOvertimeWorkTimeSpan"] as String;
    remainingWork = json["RemainingWork"] as String;
    remainingWorkMilliseconds = json["RemainingWorkMilliseconds"] as int;
    remainingWorkTimeSpan = json["RemainingWorkTimeSpan"] as String;
    resume = DateTime.parse(json["Resume"] as String);
    scheduleCostVariance = json["ScheduleCostVariance"] as int;
    scheduledDuration = json["ScheduledDuration"] as String;
    scheduledDurationMilliseconds = json["ScheduledDurationMilliseconds"] as int;
    scheduledDurationTimeSpan = json["ScheduledDurationTimeSpan"] as String;
    scheduledFinish = DateTime.parse(json["ScheduledFinish"] as String);
    scheduledStart = DateTime.parse(json["ScheduledStart"] as String);
    schedulePerformanceIndex = json["SchedulePerformanceIndex"] as int;
    scheduleVariancePercentage = json["ScheduleVariancePercentage"] as int;
    start = DateTime.parse(json["Start"] as String);
    startSlack = json["StartSlack"] as String;
    startSlackMilliseconds = json["StartSlackMilliseconds"] as int;
    startSlackTimeSpan = json["StartSlackTimeSpan"] as String;
    startVariance = json["StartVariance"] as String;
    startVarianceMilliseconds = json["StartVarianceMilliseconds"] as int;
    startVarianceTimeSpan = json["StartVarianceTimeSpan"] as String;
    stop = DateTime.parse(json["Stop"] as String);
    taskType = json["TaskType"] as int;
    toCompletePerformanceIndex = json["ToCompletePerformanceIndex"] as int;
    totalSlack = json["TotalSlack"] as String;
    totalSlackMilliseconds = json["TotalSlackMilliseconds"] as int;
    totalSlackTimeSpan = json["TotalSlackTimeSpan"] as String;
    usePercentPhysicalWorkComplete = json["UsePercentPhysicalWorkComplete"] as bool;
    work = json["Work"] as String;
    workBreakdownStructure = json["WorkBreakdownStructure"] as String;
    workMilliseconds = json["WorkMilliseconds"] as int;
    workTimeSpan = json["WorkTimeSpan"] as String;
    workVariance = json["WorkVariance"] as String;
    workVarianceMilliseconds = json["WorkVarianceMilliseconds"] as int;
    workVarianceTimeSpan = json["WorkVarianceTimeSpan"] as String;
//
//    if (duration != "0d" || work != "0d") {
//      print("Task/ $name: $duration, $work, ${uri.toString()}");
//    }
  }

  @override
  Map<String, dynamic> toJson() {
    var json = <String, dynamic> {
      'ActualCost': actualCost,
      'ActualCostWorkPerformed': actualCostWorkPerformed,
      'ActualDuration': actualDuration,
      'ActualDurationMilliseconds': actualDurationMilliseconds,
      'ActualDurationTimeSpan': actualDurationTimeSpan,
      'ActualFinish': actualFinish.toIso8601String(),
      'ActualOvertimeCost': actualOvertimeCost,
      'ActualOvertimeWork': actualOvertimeWork,
      'ActualOvertimeWorkMilliseconds': actualOvertimeWorkMilliseconds,
      'ActualOvertimeWorkTimeSpan': actualOvertimeWorkTimeSpan,
      'ActualStart': actualStart.toIso8601String(),
      'ActualWork': actualWork,
      'ActualWorkMilliseconds': actualWorkMilliseconds,
      'ActualWorkTimeSpan': actualWorkTimeSpan,
      'BaselineCost': baselineCost,
      'BaselineDuration': baselineDuration,
      'BaselineDurationMilliseconds': baselineDurationMilliseconds,
      'BaselineDurationTimeSpan': baselineDurationTimeSpan,
      'BaselineFinish': baselineFinish.toIso8601String(),
      'BaselineStart': baselineStart.toIso8601String(),
      'BaselineWork': baselineWork,
      'BaselineWorkMilliseconds': baselineWorkMilliseconds,
      'BaselineWorkTimeSpan': baselineWorkTimeSpan,
      'BudgetCost': budgetCost,
      'BudgetedCostWorkPerformed': budgetedCostWorkPerformed,
      'BudgetedCostWorkScheduled': budgetedCostWorkScheduled,
      'BudgetWork': budgetWork,
      'BudgetWorkMilliseconds': budgetWorkMilliseconds,
      'BudgetWorkTimeSpan': budgetWorkTimeSpan,
      'Completion': completion.toIso8601String(),
      'ConstraintStartEnd': constraintStartEnd.toIso8601String(),
      'ConstraintType': constraintType,
      'Contact': contact,
      'Cost': cost,
      'CostPerformanceIndex': costPerformanceIndex,
      'CostVariance': costVariance,
      'CostVarianceAtCompletion': costVarianceAtCompletion,
      'CostVariancePercentage': costVariancePercentage,
      'Created': created.toIso8601String(),
      'Deadline': deadline.toIso8601String(),
      'Duration': duration,
      'DurationMilliseconds': durationMilliseconds,
      'DurationTimeSpan': durationTimeSpan,
      'DurationVariance': durationVariance,
      'DurationVarianceMilliseconds': durationVarianceMilliseconds,
      'DurationVarianceTimeSpan': durationVarianceTimeSpan,
      'EarliestFinish': earliestFinish.toIso8601String(),
      'EarliestStart': earliestStart.toIso8601String(),
      'EstimateAtCompletion': estimateAtCompletion,
      'Finish': finish.toIso8601String(),
      'FinishSlack': finishSlack,
      'FinishSlackMilliseconds': finishSlackMilliseconds,
      'FinishSlackTimeSpan': finishSlackTimeSpan,
      'FinishVariance': finishVariance,
      'FinishVarianceMilliseconds': finishVarianceMilliseconds,
      'FinishVarianceTimeSpan': finishVarianceTimeSpan,
      'FixedCost': fixedCost,
      'FixedCostAccrual': fixedCostAccrual,
      'FreeSlack': freeSlack,
      'FreeSlackMilliseconds': freeSlackMilliseconds,
      'FreeSlackTimeSpan': freeSlackTimeSpan,
      'IsActive': isActive,
      'IsCritical': isCritical,
      'IsEffortDriven': isEffortDriven,
      'IsExternalTask': isExternalTask,
      'IsLockedByManager': isLockedByManager,
      'IsManual': isManual,
      'IsMarked': isMarked,
      'IsMilestone': isMilestone,
      'IsOverAllocated': isOverAllocated,
      'IsRecurring': isRecurring,
      'IsRecurringSummary': isRecurringSummary,
      'IsRolledUp': isRolledUp,
      'IsSubProject': isSubProject,
      'IsSubProjectReadOnly': isSubProjectReadOnly,
      'IsSubProjectScheduledFromFinish': isSubProjectScheduledFromFinish,
      'IsSummary': isSummary,
      'LatestFinish': latestFinish.toIso8601String(),
      'LatestStart': latestStart.toIso8601String(),
      'LevelingAdjustsAssignments': levelingAdjustsAssignments,
      'LevelingCanSplit': levelingCanSplit,
      'LevelingDelay': levelingDelay,
      'LevelingDelayMilliseconds': levelingDelayMilliseconds,
      'LevelingDelayTimeSpan': levelingDelayTimeSpan,
      'Modified': modified.toIso8601String(),
      'Name': name,
      'Notes': notes,
      'OutlineLevel': outlineLevel,
      'OutlinePosition': outlinePosition,
      'OvertimeCost': overtimeCost,
      'OvertimeWork': overtimeWork,
      'OvertimeWorkMilliseconds': overtimeWorkMilliseconds,
      'OvertimeWorkTimeSpan': overtimeWorkTimeSpan,
      'PercentComplete': percentComplete,
      'PercentPhysicalWorkComplete': percentPhysicalWorkComplete,
      'PercentWorkComplete': percentWorkComplete,
      'PreLevelingFinish': preLevelingFinish.toIso8601String(),
      'PreLevelingStart': preLevelingStart.toIso8601String(),
      'Priority': priority,
      'RegularWork': regularWork,
      'RegularWorkMilliseconds': regularWorkMilliseconds,
      'RegularWorkTimeSpan': regularWorkTimeSpan,
      'RemainingCost': remainingCost,
      'RemainingDuration': remainingDuration,
      'RemainingDurationMilliseconds': remainingDurationMilliseconds,
      'RemainingDurationTimeSpan': remainingDurationTimeSpan,
      'RemainingOvertimeCost': remainingOvertimeCost,
      'RemainingOvertimeWork': remainingOvertimeWork,
      'RemainingOvertimeWorkMilliseconds': remainingOvertimeWorkMilliseconds,
      'RemainingOvertimeWorkTimeSpan': remainingOvertimeWorkTimeSpan,
      'RemainingWork': remainingWork,
      'RemainingWorkMilliseconds': remainingWorkMilliseconds,
      'RemainingWorkTimeSpan': remainingWorkTimeSpan,
      'Resume': resume.toIso8601String(),
      'ScheduleCostVariance': scheduleCostVariance,
      'ScheduledDuration': scheduledDuration,
      'ScheduledDurationMilliseconds': scheduledDurationMilliseconds,
      'ScheduledDurationTimeSpan': scheduledDurationTimeSpan,
      'ScheduledFinish': scheduledFinish.toIso8601String(),
      'ScheduledStart': scheduledStart.toIso8601String(),
      'SchedulePerformanceIndex': schedulePerformanceIndex,
      'ScheduleVariancePercentage': scheduleVariancePercentage,
      'Start': start.toIso8601String(),
      'StartSlack': startSlack,
      'StartSlackMilliseconds': startSlackMilliseconds,
      'StartSlackTimeSpan': startSlackTimeSpan,
      'StartVariance': startVariance,
      'StartVarianceMilliseconds': startVarianceMilliseconds,
      'StartVarianceTimeSpan': startVarianceTimeSpan,
      'Stop': stop.toIso8601String(),
      'TaskType': taskType,
      'ToCompletePerformanceIndex': toCompletePerformanceIndex,
      'TotalSlack': totalSlack,
      'TotalSlackMilliseconds': totalSlackMilliseconds,
      'TotalSlackTimeSpan': totalSlackTimeSpan,
      'UsePercentPhysicalWorkComplete': usePercentPhysicalWorkComplete,
      'Work': work,
      'WorkBreakdownStructure': workBreakdownStructure,
      'WorkMilliseconds': workMilliseconds,
      'WorkTimeSpan': workTimeSpan,
      'WorkVariance': workVariance,
      'WorkVarianceMilliseconds': workVarianceMilliseconds,
      'WorkVarianceTimeSpan': workVarianceTimeSpan,
    };

    json.addAll(super.toJson());

    return json;
  }
}
