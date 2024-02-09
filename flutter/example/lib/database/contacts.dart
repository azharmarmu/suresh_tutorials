import 'package:hive/hive.dart';

import '../models/contact_model.dart';

Future<List<ContactModel>> getContacts() async {
  try {
    var myApp = await Hive.openBox('MyApp');
    final List<dynamic> value = myApp.get('contacts');
    return value
        .map((dynamic e) => ContactModel.fromJson(e))
        .toList();
  } catch (e) {
    print(e);
  }
  return [];
}

Future<void> saveContact(List<ContactModel> contacts) async {
  try {
    var myApp = await Hive.openBox('MyApp');
    myApp.put('contacts', contacts.map((e) => e.toMap()).toList());
  } catch (e) {
    print(e);
  }
}
