
import 'package:project_server/project_server.dart';

class DraftProject extends Project {
  DraftProject();

  DraftProject.fromJson(Map<String, dynamic> json) {
    initFromJson(json);
  }

  @override
  void initFromJson(Map<String, dynamic> json) {
    super.initFromJson(json);
  }
}