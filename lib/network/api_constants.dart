// ignore_for_file: constant_identifier_names

class ApiConstants {
  static const ALBION_EAST_URL = "https://east.albion-online-data.com";
  static const ALBION_WEST_URL = "https://west.albion-online-data.com";

  // static const ALBION_TOOL_URL = "https://gameinfo.albiononline.com/api";
  // static const ALBION_WIKI_URL = "https://wiki.albiononline.com";

  static const OPEN_ALBION_URL = "https://api.openalbion.com/api/v1";

  static const DEFAULT_NETWORK_CONNECT_TIMEOUT = Duration.millisecondsPerMinute;
  static const DEFAULT_NETWORK_RECEIVE_TIMEOUT = Duration.microsecondsPerMinute;

  static const STATUS_CODE_CONNECT_TIMEOUT = "408";
  static const STATUS_CODE_RECEIVE_TIMEOUT = "406";

  static const X_Firebase_AppCheck = "X-Firebase-AppCheck";
}
