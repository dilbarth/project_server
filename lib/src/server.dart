
import 'dart:io';
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

    _client = NTLMClient(
      username: username,
      password: password,
    );
  }

  final Uri url;
  String _apiUrl;

  ContextInfo _contextInfo;
  ContextInfo get contextInfo => _contextInfo;

  NTLMClient _client;

  Future<ContextInfo> fetchContextInfoNtlm() async {
    var urlcmd = Uri.parse("$_apiUrl/contextinfo");

    var response = await _client.post(
        urlcmd,
        headers: {
          "Accept": "application/json;odata=verbose",
          "ContentType": "application/json",
          "ContentLength": "0",
        }
    );

    _contextInfo = null;
    if (response.statusCode == 200) {
      print(response.body);
      var jsn = json.decode(response.body);
      _contextInfo = ContextInfo.fromJson(jsn);
    }

    return _contextInfo;
  }

  Future<String> fetchProjects() async {
    var urlcmd = Uri.parse("$_apiUrl/ProjectServer/Projects");

    NTLMClient client = NTLMClient(
      username: "m21053",
      password: "User3*Story",
    );

    var response = await client.get(
        urlcmd,
        headers: {
          "Accept": "application/json;odata=verbose",
          "ContentType": "application/json",
          "X-RequestDigest": _contextInfo.formDigestValue,
        }
    );

    if (response.statusCode == 200) {
      print(response.body);
      var jsn = json.decode(response.body);
    }

//    var client = HttpClient();

//    var request = await client.getUrl(urlcmd);
//    request.headers.add("Accept", "application/json;odata=verbose");
//    request.headers.add("ContentType", "application/json");
//    request.headers.add("X-RequestDigest", _contextInfo.formDigestValue);
//    var response = await request.close();

    return "";
  }

  Future<String> fetchContextInfo() async {
    var urlcmd = Uri.parse("${url.toString()}/_api/ProjectServer/Projects");
    var client = HttpClient();

    var request = await client.postUrl(urlcmd);
    request.headers.add("Accept", "application/json;odata=verbose");
    request.headers.add("ContentType", "application/json");
    var response = await request.close();


    response.transform(utf8.decoder).listen((content) {
    });

    return "Bla";

//    client.getUrl(urlcmd)
//        .then((HttpClientRequest request) {
//      request.headers.add("Accept", "application/json;odata=verbose");
//      request.headers.add("ContentType", "application/json");
//      request.headers.add("ContentLength", "0");
//      return request.close();
//    })
//        .then((HttpClientResponse response) {
//      response.transform(utf8.decoder).listen((content) {
//
//      });
//    });

//    HttpClient client = new HttpClient(new HttpClientHandler() { UseDefaultCredentials = true });
//    client.
//    client.BaseAddress = new System.Uri(url);
//    string cmd = "_api/contextinfo";
//    client.DefaultRequestHeaders.Add("Accept", "application/json;odata=verbose");
//    client.DefaultRequestHeaders.Add("ContentType", "application/json");
//    client.DefaultRequestHeaders.Add("ContentLength", "0");
//    StringContent httpContent = new StringContent("");
//    var response = client.PostAsync(cmd, httpContent).Result;
//    if (response.IsSuccessStatusCode)
//    {
//      string content = response.Content.ReadAsStringAsync().Result;
//      JsonObject val = JsonValue.Parse(content).GetObject();
//      JsonObject d = val.GetNamedObject("d");
//      JsonObject wi = d.GetNamedObject("GetContextWebInformation");
//      retVal = wi.GetNamedString("FormDigestValue");
//    }
//  }
//  catch
//  { }
//  return retVal;
  }
}
