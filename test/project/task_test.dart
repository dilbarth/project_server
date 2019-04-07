
// Task MAC Tx/Rx in OptoLyzer Studio (CC):
// http://chn-vm-projsrv/pwa/_api/ProjectServer/Projects('d0d6f350-9f7e-e811-8cd0-0028f8246d86')/Tasks('57cc690b-8aa7-e811-8ce3-0028f8246d86')

// Task/ MAC Tx/Rx in OptoLyzer Studio: 73d, 208h, http://chn-vm-projsrv/pwa/_api/ProjectServer/Projects('d0d6f350-9f7e-e811-8cd0-0028f8246d86')/Tasks('36688539-cc8f-4af2-b407-5d20f01a9e68')
//Task/ Implement BSD Data Factory: 4d, 32h, http://chn-vm-projsrv/pwa/_api/ProjectServer/Projects('d0d6f350-9f7e-e811-8cd0-0028f8246d86')/Tasks('814af15d-6ea7-e811-8ce3-0028f8246d86')
//Task/ Combine DBC and BSDConfig: 5d, 40h, http://chn-vm-projsrv/pwa/_api/ProjectServer/Projects('d0d6f350-9f7e-e811-8cd0-0028f8246d86')/Tasks('9234729f-6ea7-e811-8ce3-0028f8246d86')
//Task/ Create Freshness/CMAC calculation component and MEF service: 10d, 80h, http://chn-vm-projsrv/pwa/_api/ProjectServer/Projects('d0d6f350-9f7e-e811-8cd0-0028f8246d86')/Tasks('f7a2e1b3-bbd2-e811-8cef-0028f8246d86')
//Task/ Create Activity with Freshness and CMAC Processing: 7d, 56h, http://chn-vm-projsrv/pwa/_api/ProjectServer/Projects('d0d6f350-9f7e-e811-8cd0-0028f8246d86')/Tasks('b220e509-6fa7-e811-8ce3-0028f8246d86')
//Task/ Current percentage of CAN busload: 16d, 120h, http://chn-vm-projsrv/pwa/_api/ProjectServer/Projects('d0d6f350-9f7e-e811-8cd0-0028f8246d86')/Tasks('ce2037b5-eab2-4775-8613-7f1064decbbd')
//Task/ Implementation of Busload component: 10d, 80h, http://chn-vm-projsrv/pwa/_api/ProjectServer/Projects('d0d6f350-9f7e-e811-8cd0-0028f8246d86')/Tasks('78bc8e08-bbb5-e811-8ce6-0028f8246d86')
//Task/ Integration into OptoLyzer Studio: 5d, 40h, http://chn-vm-projsrv/pwa/_api/ProjectServer/Projects('d0d6f350-9f7e-e811-8cd0-0028f8246d86')/Tasks('c126e122-bbb5-e811-8ce6-0028f8246d86')
//Task/ SOME/IP Extension: 35d, 280h, http://chn-vm-projsrv/pwa/_api/ProjectServer/Projects('d0d6f350-9f7e-e811-8cd0-0028f8246d86')/Tasks('a7526b93-efb4-4d00-a404-df9c067c948e')

import 'package:flutter_test/flutter_test.dart';

import 'package:project_server/project_server.dart';

import '../common.dart';

void main() {

  test('get single Task from JSON', () async {
    var data = {"d":{"__metadata":{"id":"ProjectServer/Projects('d0d6f350-9f7e-e811-8cd0-0028f8246d86')/Tasks('36688539-cc8f-4af2-b407-5d20f01a9e68')","uri":"http://chn-vm-projsrv/pwa/_api/ProjectServer/Projects('d0d6f350-9f7e-e811-8cd0-0028f8246d86')/Tasks('36688539-cc8f-4af2-b407-5d20f01a9e68')","type":"PS.PublishedTask"},"CustomFields":{"__deferred":{"uri":"http://chn-vm-projsrv/pwa/_api/ProjectServer/Projects('d0d6f350-9f7e-e811-8cd0-0028f8246d86')/Tasks('36688539-cc8f-4af2-b407-5d20f01a9e68')/CustomFields"}},"SubProject":{"__deferred":{"uri":"http://chn-vm-projsrv/pwa/_api/ProjectServer/Projects('d0d6f350-9f7e-e811-8cd0-0028f8246d86')/Tasks('36688539-cc8f-4af2-b407-5d20f01a9e68')/SubProject"}},"Assignments":{"__deferred":{"uri":"http://chn-vm-projsrv/pwa/_api/ProjectServer/Projects('d0d6f350-9f7e-e811-8cd0-0028f8246d86')/Tasks('36688539-cc8f-4af2-b407-5d20f01a9e68')/Assignments"}},"Calendar":{"__deferred":{"uri":"http://chn-vm-projsrv/pwa/_api/ProjectServer/Projects('d0d6f350-9f7e-e811-8cd0-0028f8246d86')/Tasks('36688539-cc8f-4af2-b407-5d20f01a9e68')/Calendar"}},"Parent":{"__deferred":{"uri":"http://chn-vm-projsrv/pwa/_api/ProjectServer/Projects('d0d6f350-9f7e-e811-8cd0-0028f8246d86')/Tasks('36688539-cc8f-4af2-b407-5d20f01a9e68')/Parent"}},"Predecessors":{"__deferred":{"uri":"http://chn-vm-projsrv/pwa/_api/ProjectServer/Projects('d0d6f350-9f7e-e811-8cd0-0028f8246d86')/Tasks('36688539-cc8f-4af2-b407-5d20f01a9e68')/Predecessors"}},"Successors":{"__deferred":{"uri":"http://chn-vm-projsrv/pwa/_api/ProjectServer/Projects('d0d6f350-9f7e-e811-8cd0-0028f8246d86')/Tasks('36688539-cc8f-4af2-b407-5d20f01a9e68')/Successors"}},"ActualDuration":"73d","ActualDurationMilliseconds":2102400000,"ActualDurationTimeSpan":"P24DT8H","BaselineCost":0,"BaselineDuration":null,"BaselineDurationMilliseconds":0,"BaselineDurationTimeSpan":"PT0S","BaselineFinish":"0001-01-01T00:00:00","BaselineStart":"0001-01-01T00:00:00","BaselineWork":null,"BaselineWorkMilliseconds":0,"BaselineWorkTimeSpan":"PT0S","BudgetCost":0,"CostPerformanceIndex":0,"CostVariance":0,"CostVarianceAtCompletion":0,"CostVariancePercentage":0,"Created":"2018-07-05T00:44:35.83","DurationVariance":"73d","DurationVarianceMilliseconds":2102400000,"DurationVarianceTimeSpan":"P24DT8H","EarliestFinish":"2018-11-16T17:00:00","EarliestStart":"2018-08-06T08:00:00","EstimateAtCompletion":0,"FinishSlack":"0d","FinishSlackMilliseconds":0,"FinishSlackTimeSpan":"PT0S","FinishVariance":"0d","FinishVarianceMilliseconds":0,"FinishVarianceTimeSpan":"PT0S","FreeSlack":"0d","FreeSlackMilliseconds":0,"FreeSlackTimeSpan":"PT0S","Id":"36688539-cc8f-4af2-b407-5d20f01a9e68","IsCritical":false,"IsExternalTask":false,"IsOverAllocated":false,"IsRecurring":false,"IsRecurringSummary":false,"IsRolledUp":true,"IsSubProject":false,"IsSubProjectReadOnly":false,"IsSubProjectScheduledFromFinish":false,"IsSummary":true,"LatestFinish":"2018-11-16T17:00:00","LatestStart":"2018-08-06T08:00:00","Modified":"2019-03-14T01:58:43.31","Notes":null,"OutlinePosition":"2.4.4","OvertimeCost":0,"OvertimeWork":"0h","OvertimeWorkMilliseconds":0,"OvertimeWorkTimeSpan":"PT0S","PercentWorkComplete":100,"PreLevelingFinish":"0001-01-01T00:00:00","PreLevelingStart":"0001-01-01T00:00:00","RegularWork":"208h","RegularWorkMilliseconds":748800000,"RegularWorkTimeSpan":"P8DT16H","RemainingCost":0,"RemainingOvertimeCost":0,"RemainingOvertimeWork":"0h","RemainingOvertimeWorkMilliseconds":0,"RemainingOvertimeWorkTimeSpan":"PT0S","RemainingWork":"0h","RemainingWorkMilliseconds":0,"RemainingWorkTimeSpan":"PT0S","Resume":"2018-08-10T17:00:00","ScheduleCostVariance":0,"ScheduledDuration":"73d","ScheduledDurationMilliseconds":2102400000,"ScheduledDurationTimeSpan":"P24DT8H","ScheduledFinish":"2018-11-16T17:00:00","ScheduledStart":"2018-08-06T08:00:00","SchedulePerformanceIndex":0,"ScheduleVariancePercentage":0,"StartSlack":"0d","StartSlackMilliseconds":0,"StartSlackTimeSpan":"PT0S","StartVariance":"0d","StartVarianceMilliseconds":0,"StartVarianceTimeSpan":"PT0S","Stop":"2018-08-10T17:00:00","ToCompletePerformanceIndex":0,"TotalSlack":"0d","TotalSlackMilliseconds":0,"TotalSlackTimeSpan":"PT0S","WorkBreakdownStructure":"2.4.4","WorkVariance":"208h","WorkVarianceMilliseconds":748800000,"WorkVarianceTimeSpan":"P8DT16H","ActualCost":0,"ActualCostWorkPerformed":0,"ActualFinish":"2018-11-16T17:00:00","ActualOvertimeCost":0,"ActualOvertimeWork":"0h","ActualOvertimeWorkMilliseconds":0,"ActualOvertimeWorkTimeSpan":"PT0S","ActualStart":"2018-08-06T08:00:00","ActualWork":"208h","ActualWorkMilliseconds":748800000,"ActualWorkTimeSpan":"P8DT16H","BudgetedCostWorkPerformed":0,"BudgetedCostWorkScheduled":0,"BudgetWork":"0h","BudgetWorkMilliseconds":0,"BudgetWorkTimeSpan":"PT0S","Completion":"2018-11-16T17:00:00","ConstraintStartEnd":"0001-01-01T00:00:00","ConstraintType":1,"Contact":null,"Cost":0,"Deadline":"0001-01-01T00:00:00","Duration":"73d","DurationMilliseconds":2102400000,"DurationTimeSpan":"P24DT8H","Finish":"2018-11-16T17:00:00","FixedCost":0,"FixedCostAccrual":3,"IsActive":true,"IsEffortDriven":false,"IsLockedByManager":false,"IsManual":false,"IsMarked":false,"IsMilestone":false,"LevelingAdjustsAssignments":true,"LevelingCanSplit":true,"LevelingDelay":"0ed","LevelingDelayMilliseconds":0,"LevelingDelayTimeSpan":"PT0S","Name":"MAC Tx/Rx in OptoLyzer Studio","OutlineLevel":3,"PercentComplete":100,"PercentPhysicalWorkComplete":0,"Priority":500,"RemainingDuration":"0d","RemainingDurationMilliseconds":0,"RemainingDurationTimeSpan":"PT0S","Start":"2018-08-06T08:00:00","TaskType":1,"UsePercentPhysicalWorkComplete":false,"Work":"208h","WorkMilliseconds":748800000,"WorkTimeSpan":"P8DT16H","Custom_x005f_172680cfa6f0e711a7dd001c42c46069":"14346","Custom_x005f_785ff5bfd6fae7118ca70028f8246d83":"1","Custom_x005f_0000e8d965f147699bd2819d38036fcc":{"__metadata":{"type":"Collection(Edm.String)"},"results":["Entry_000079d24a4341fcb26498d23fadd84b"]}}};
    var task = Task.fromJson(data["d"]);
    _checkTask(task);

    var taskJson = task.toJson();
    var task2 = Task.fromJson(taskJson);
    _checkTask(task2);


//    _checkProject(project);
//    _checkDeferredProperties(project);
  });

  test('fetch single Task online', () async {
    var uri = Uri.parse("http://chn-vm-projsrv/pwa/_api/ProjectServer/Projects('d0d6f350-9f7e-e811-8cd0-0028f8246d86')/Tasks('36688539-cc8f-4af2-b407-5d20f01a9e68')");
    final server = Server(url: serverUrl, username: username, password: password);
    var data = await server.fetchData(uri);

    var task = Task.fromJson(data["d"]);
    _checkTask(task);
//    _checkDeferredProperties(project);
//
//    await project.owner.fetchDataIfDeferred(server);
//    _checkProject(project);
//    _checkUndeferredProperties(project);
  });

  test('fetch Projects online', () async {
    final server = Server(url: serverUrl, username: username, password: password);
    var projects = await server.fetchProjects();
    expect(projects, isNotNull);
    expect(projects, isNotEmpty);

    var project = projects.where((p) => p.name == "K2L OptoLyzer Studio 1_6 Dev").first;


//    int i = 0;
//    for (var project in projects) {
//      print("$i: ${project.name}, ${project is PublishedProject}");
//      i++;
//    }
  });
}

void _checkTask(Task task) {
  expect(task, isNotNull);
  expect(task.uri.toString(), equals("http://chn-vm-projsrv/pwa/_api/ProjectServer/Projects('d0d6f350-9f7e-e811-8cd0-0028f8246d86')/Tasks('36688539-cc8f-4af2-b407-5d20f01a9e68')"));

  expect(task.actualCost, equals(0));
  expect(task.actualCostWorkPerformed, equals(0));
  expect(task.actualDuration, equals("73d"));
  expect(task.actualDurationMilliseconds, equals(2102400000));
  expect(task.actualDurationTimeSpan, equals("P24DT8H"));
  expect(task.actualFinish.toIso8601String(), equals("2018-11-16T17:00:00.000"));
  expect(task.actualOvertimeCost, equals(0));
  expect(task.actualOvertimeWork, equals("0h"));
  expect(task.actualOvertimeWorkMilliseconds, equals(0));
  expect(task.actualOvertimeWorkTimeSpan, equals("PT0S"));
  expect(task.actualStart.toIso8601String(), equals("2018-08-06T08:00:00.000"));
  expect(task.actualWork, equals("208h"));
  expect(task.actualWorkMilliseconds, equals(748800000));
  expect(task.actualWorkTimeSpan, equals("P8DT16H"));
  expect(task.baselineCost, equals(0));
  expect(task.baselineDuration, isNull);
  expect(task.baselineDurationMilliseconds, equals(0));
  expect(task.baselineDurationTimeSpan, equals("PT0S"));
  expect(task.baselineFinish.toIso8601String(), equals("0001-01-01T00:00:00.000"));
  expect(task.baselineStart.toIso8601String(), equals("0001-01-01T00:00:00.000"));
  expect(task.baselineWork, isNull);
  expect(task.baselineWorkMilliseconds, equals(0));
  expect(task.baselineWorkTimeSpan, equals("PT0S"));
  expect(task.budgetCost, equals(0));
  expect(task.budgetedCostWorkPerformed, equals(0));
  expect(task.budgetedCostWorkScheduled, equals(0));
  expect(task.budgetWork, equals("0h"));
  expect(task.budgetWorkMilliseconds, equals(0));
  expect(task.budgetWorkTimeSpan, equals("PT0S"));
  expect(task.completion.toIso8601String(), equals("2018-11-16T17:00:00.000"));
  expect(task.constraintStartEnd.toIso8601String(), equals("0001-01-01T00:00:00.000"));
  expect(task.constraintType, equals(1));
  expect(task.contact, isNull);
  expect(task.cost, equals(0));
  expect(task.costPerformanceIndex, equals(0));
  expect(task.costVariance, equals(0));
  expect(task.costVarianceAtCompletion, equals(0));
  expect(task.costVariancePercentage, equals(0));
  expect(task.created.toIso8601String(), equals("2018-07-05T00:44:35.830"));
  expect(task.deadline.toIso8601String(), equals("0001-01-01T00:00:00.000"));
  expect(task.duration, equals("73d"));
  expect(task.durationMilliseconds, equals(2102400000));
  expect(task.durationTimeSpan, equals("P24DT8H"));
  expect(task.durationVariance, equals("73d"));
  expect(task.durationVarianceMilliseconds, equals(2102400000));
  expect(task.durationVarianceTimeSpan, equals("P24DT8H"));
  expect(task.earliestFinish.toIso8601String(), equals("2018-11-16T17:00:00.000"));
  expect(task.earliestStart.toIso8601String(), equals("2018-08-06T08:00:00.000"));
  expect(task.estimateAtCompletion, equals(0));
  expect(task.finish.toIso8601String(), equals("2018-11-16T17:00:00.000"));
  expect(task.finishSlack, equals("0d"));
  expect(task.finishSlackMilliseconds, equals(0));
  expect(task.finishSlackTimeSpan, equals("PT0S"));
  expect(task.finishVariance, equals("0d"));
  expect(task.finishVarianceMilliseconds, equals(0));
  expect(task.finishVarianceTimeSpan, equals("PT0S"));
  expect(task.fixedCost, equals(0));
  expect(task.fixedCostAccrual, equals(3));
  expect(task.freeSlack, equals("0d"));
  expect(task.freeSlackMilliseconds, equals(0));
  expect(task.freeSlackTimeSpan, equals("PT0S"));
  expect(task.isActive, isTrue);
  expect(task.isCritical, isFalse);
  expect(task.isEffortDriven, isFalse);
  expect(task.isExternalTask, isFalse);
  expect(task.isLockedByManager, isFalse);
  expect(task.isManual, isFalse);
  expect(task.isMarked, isFalse);
  expect(task.isMilestone, isFalse);
  expect(task.isOverAllocated, isFalse);
  expect(task.isRecurring, isFalse);
  expect(task.isRecurringSummary, isFalse);
  expect(task.isRolledUp, isTrue);
  expect(task.isSubProject, isFalse);
  expect(task.isSubProjectReadOnly, isFalse);
  expect(task.isSubProjectScheduledFromFinish, isFalse);
  expect(task.isSummary, isTrue);
  expect(task.latestFinish.toIso8601String(), equals("2018-11-16T17:00:00.000"));
  expect(task.latestStart.toIso8601String(), equals("2018-08-06T08:00:00.000"));
  expect(task.levelingAdjustsAssignments, isTrue);
  expect(task.levelingCanSplit, isTrue);
  expect(task.levelingDelay, equals("0ed"));
  expect(task.levelingDelayMilliseconds, equals(0));
  expect(task.levelingDelayTimeSpan, equals("PT0S"));
  expect(task.modified.toIso8601String(), equals("2019-03-14T01:58:43.310"));
  expect(task.name, equals("MAC Tx/Rx in OptoLyzer Studio"));
  expect(task.notes, isNull);
  expect(task.outlineLevel, equals(3));
  expect(task.outlinePosition, equals("2.4.4"));
  expect(task.overtimeCost, equals(0));
  expect(task.overtimeWork, equals("0h"));
  expect(task.overtimeWorkMilliseconds, equals(0));
  expect(task.overtimeWorkTimeSpan, equals("PT0S"));
  expect(task.percentComplete, equals(100));
  expect(task.percentPhysicalWorkComplete, equals(0));
  expect(task.percentWorkComplete, equals(100));
  expect(task.preLevelingFinish.toIso8601String(), equals("0001-01-01T00:00:00.000"));
  expect(task.preLevelingStart.toIso8601String(), equals("0001-01-01T00:00:00.000"));
  expect(task.priority, equals(500));
  expect(task.regularWork, equals("208h"));
  expect(task.regularWorkMilliseconds, equals(748800000));
  expect(task.regularWorkTimeSpan, equals("P8DT16H"));
  expect(task.remainingCost, equals(0));
  expect(task.remainingDuration, equals("0d"));
  expect(task.remainingDurationMilliseconds, equals(0));
  expect(task.remainingDurationTimeSpan, equals("PT0S"));
  expect(task.remainingOvertimeCost, equals(0));
  expect(task.remainingOvertimeWork, equals("0h"));
  expect(task.remainingOvertimeWorkMilliseconds, equals(0));
  expect(task.remainingOvertimeWorkTimeSpan, equals("PT0S"));
  expect(task.remainingWork, equals("0h"));
  expect(task.remainingWorkMilliseconds, equals(0));
  expect(task.remainingWorkTimeSpan, equals("PT0S"));
  expect(task.resume.toIso8601String(), equals("2018-08-10T17:00:00.000"));
  expect(task.scheduleCostVariance, equals(0));
  expect(task.scheduledDuration, equals("73d"));
  expect(task.scheduledDurationMilliseconds, equals(2102400000));
  expect(task.scheduledDurationTimeSpan, equals("P24DT8H"));
  expect(task.scheduledFinish.toIso8601String(), equals("2018-11-16T17:00:00.000"));
  expect(task.scheduledStart.toIso8601String(), equals("2018-08-06T08:00:00.000"));
  expect(task.schedulePerformanceIndex, equals(0));
  expect(task.scheduleVariancePercentage, equals(0));
  expect(task.start.toIso8601String(), equals("2018-08-06T08:00:00.000"));
  expect(task.startSlack, equals("0d"));
  expect(task.startSlackMilliseconds, equals(0));
  expect(task.startSlackTimeSpan, equals("PT0S"));
  expect(task.startVariance, equals("0d"));
  expect(task.startVarianceMilliseconds, equals(0));
  expect(task.startVarianceTimeSpan, equals("PT0S"));
  expect(task.stop.toIso8601String(), equals("2018-08-10T17:00:00.000"));
  expect(task.taskType, equals(1));
  expect(task.toCompletePerformanceIndex, equals(0));
  expect(task.totalSlack, equals("0d"));
  expect(task.totalSlackMilliseconds, equals(0));
  expect(task.totalSlackTimeSpan, equals("PT0S"));
  expect(task.usePercentPhysicalWorkComplete, isFalse);
  expect(task.work, equals("208h"));
  expect(task.workBreakdownStructure, equals("2.4.4"));
  expect(task.workMilliseconds, equals(748800000));
  expect(task.workTimeSpan, equals("P8DT16H"));
  expect(task.workVariance, equals("208h"));
  expect(task.workVarianceMilliseconds, equals(748800000));
  expect(task.workVarianceTimeSpan, equals("P8DT16H"));
}
