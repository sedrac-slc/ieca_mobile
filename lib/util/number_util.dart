class NumberUtil {

  static bool isInteger(String str) {
    return str.isEmpty ? false :  RegExp(r'^[0-9]+$').hasMatch(str);
  }

}