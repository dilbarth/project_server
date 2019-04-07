
import 'package:project_server/project_server.dart';

class TaskCollection extends PsObject {
  TaskCollection();

  final List<Task> tasks = List<Task>();

  @override
  void initFromJson(Map<String, dynamic> json) {
    super.initFromJson(json);

    var results = json["results"];
    if (results == null) {
      return;
    }

    var taskList = List<Task>();
    for (var result in results) {
      var task = Task.fromJson(result);
      taskList.add(task);
    }

    tasks.clear();
    tasks.addAll(taskList);
  }
}
