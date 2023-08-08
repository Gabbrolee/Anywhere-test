class Utils {
  static List<String> getSplitedString(String text) {
    List<String> parts = text.split(' - ');

    return parts;
  }

  static String getImageUrl({String url = ""}) {
    String baseUrl = "https://duckduckgo.com/";

    if(url.isNotEmpty){
      url = baseUrl + url;
    }
  

    return url;
  }
}
