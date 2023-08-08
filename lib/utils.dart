class Utils {
   static List<String> getSplitedString( String text) {

    List<String> parts = text.split(' - ');

    if (parts.length > 1) {
      String extractedText = parts[0];
      print("Extracted text: $extractedText");
    } else {
      print("No separator found in the text");
    }
    return parts;
  }
}