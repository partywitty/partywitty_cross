import 'package:shared_preferences/shared_preferences.dart';

class GetUserDetail{
  Future<void>  setUserData(key , text )async{
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, text);
  }

  Future<String> getUserData(key)async{
    final prefs = await SharedPreferences.getInstance();
    String? text= prefs.getString(key);
    print("share pre -------------------------- $text");
    return text.toString();
  }
  remove(key)async{
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(key);
  }
}

class SharePre {
  // save data in local

  static setUserId(String userId) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('user_id', userId);

  }

  static setUserType(String userType) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('user_type', userType);

  }

  static setCity(String city) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('city', city);

  }

  static setState(String state) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('state', state);
  }
}