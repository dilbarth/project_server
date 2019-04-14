
import 'package:project_server/project_server.dart';

class PublishedProject extends Project {
  PublishedProject();

  DeferredObject<DraftProject> draft;

  PublishedProject.fromJson(Map<String, dynamic> json) {
    initFromJson(json);
  }

  @override
  void initFromJson(Map<String, dynamic> json) {
    super.initFromJson(json);
    draft = DeferredObject<DraftProject>(() => DraftProject(), json["Draft"]);
  }

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();

    json.addAll(
        <String, dynamic> {
          'Draft': draft.toJson()
        }
    );

    return json;
  }
}
