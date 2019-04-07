
import 'dart:convert';
import 'package:ntlm/ntlm.dart';

import 'package:project_server/project_server.dart';

//http://chn-vm-projsrv/pwa/default.aspx

/// The Server.
class Server {
  Server({
    this.url,
    String username,
    String password
  }) {
    var path = url.toString();
    if (!path.endsWith("/")) {
      path += "/";
    }
    _apiUrl = "${path}_api";

    _username = username;
    _password = password;
  }

  final Uri url;
  String _username;
  String _password;
  String _apiUrl;

  DateTime _contextInfoTimestamp;
  ContextInfo _contextInfo;
  ContextInfo get contextInfo => _contextInfo;

  Future<Map<String, dynamic>> fetchData(Uri uri) async {
    await _contextInfoProcessing();

    var client = _createClient();
    var response = await client.get(
        uri,
        headers: {
          "Accept": "application/json;odata=verbose",
          "ContentType": "application/json",
          "X-RequestDigest": _contextInfo.formDigestValue,
        }
    );

    if (response.statusCode == 200) {
      print(response.body);
      return json.decode(response.body);
    } else {
      print(response.body);
    }

    return null;
  }

  Future<List<Project>> fetchProjects() async {
    var cmd = Uri.parse("$_apiUrl/ProjectServer/Projects");

    var data = await fetchData(cmd);
    if (data == null) {
      return null;
    }

    var results = data["d"]["results"];
    if (results == null) {
      return null;
    }

    var projects = List<Project>();
    for (var result in results) {
      var project = Project.create(result);
      projects.add(project);
    }

    return projects;
  }

  Future<ContextInfo> fetchContextInfo() async {
    var cmd = Uri.parse("$_apiUrl/contextinfo");

    var client = _createClient();

    var response = await client.post(
        cmd,
        headers: {
          "Accept": "application/json;odata=verbose",
          "ContentType": "application/json",
          "ContentLength": "0",
        }
    );

    _contextInfo = null;
    if (response.statusCode == 200) {
      _contextInfoTimestamp = DateTime.now();
      print(response.body);
      var jsn = json.decode(response.body);
      _contextInfo = ContextInfo.fromJson(jsn);
    }

    return _contextInfo;
  }

  NTLMClient _createClient() {
    var client = NTLMClient(
      username: _username,
      password: _password,
    );
    return client;
  }

  Future<bool> _contextInfoProcessing() async {
    if (!_isContextInfoRefreshNeeded()) {
      return true;
    }

    var result = await fetchContextInfo();
    return result != null;
  }

  bool _isContextInfoRefreshNeeded() {
    if (_contextInfo == null || _contextInfoTimestamp == null) {
      return true;
    }

    var diff = DateTime.now().difference(_contextInfoTimestamp).inSeconds;
    return diff > (_contextInfo.formDigestTimeoutSeconds * 0.9);
  }
}
