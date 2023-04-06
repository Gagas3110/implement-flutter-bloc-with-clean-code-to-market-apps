import 'package:intl/intl.dart';
import 'package:news_app/helper/constant.dart';
import 'package:news_app/model/login.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';

class SharedDB {
  Future saveUser(Login login) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    await prefs.setString(
        SharedKey.token, login.token.toString());
    await prefs.setString(
        SharedKey.image, login.image.toString());
    await prefs.setString(
        SharedKey.name, login.firstName.toString());
    //helper
    await prefs.setString(SharedKey.username, login.username.toString());
    await prefs.setString(SharedKey.password, login.password.toString());
   
  }

  Future<Login> getUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
  
    Login log = new Login();

  

    log.image = prefs.getString(SharedKey.image);

    log.firstName = prefs.getString(SharedKey.name);

    log.token = prefs.getString(SharedKey.token);

    log.username = prefs.getString(SharedKey.username);
    log.password = prefs.getString(SharedKey.password);



    return log;
  }

  Future dbClear() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }

 
}

DateTime convertDate(String sDate, String format) {
  var formatter = DateFormat(format);
  try {
    //if (sDate != null) {
    int index = format.indexOf('MMM');
    if (index >= 0) {
      String mon = sDate.substring(index, (index + 3));
      String monC = mon.capitalize();
      sDate = sDate.replaceAll(mon, monC);
      print(sDate.replaceAll(mon, monC));
    }
    int i = format.indexOf('MMMM');

    if (i >= 0) {
      String mon = sDate.substring(i, (i + 4));
      String monC = mon.capitalize();
      sDate = sDate.replaceAll(mon, monC);
      print(sDate.replaceAll(mon, monC));
    }
    return formatter.parse(sDate);
    //}
    //return null;
  } catch (e) {
    print(e);
    throw e.toString();
  }
}
