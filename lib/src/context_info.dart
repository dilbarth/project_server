
class ContextInfo {
  ContextInfo({
    this.formDigestTimeoutSeconds,
    this.formDigestValue,
    this.libraryVersion,
    this.siteFullUrl,
    this.webFullUrl
  });

  factory ContextInfo.fromJson(Map<String, dynamic> json) {
    var info = json["d"]["GetContextWebInformation"];
    return ContextInfo(
      formDigestTimeoutSeconds: info["FormDigestTimeoutSeconds"] as int,
      formDigestValue: info["FormDigestValue"] as String,
      libraryVersion: info["LibraryVersion"] as String,
      siteFullUrl: Uri.parse(info["SiteFullUrl"] as String),
        webFullUrl: Uri.parse(info["WebFullUrl"] as String)
    );
  }

  final int formDigestTimeoutSeconds;
  final String formDigestValue;
  final String libraryVersion;
  final Uri siteFullUrl;
  final Uri webFullUrl;
}