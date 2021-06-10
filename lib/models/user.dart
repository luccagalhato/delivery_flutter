import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  User(
      {this.email,
      this.password,
      this.firstname,
      this.lastname,
      this.nickname,
      this.number,
      this.id});

  User.fromDocument(DocumentSnapshot document) {
    if (document?.data != null) {
      id = document.documentID;
      firstname = document?.data['firstname'] as String ?? "";
      lastname = document?.data['lastname'] as String ?? "";
      email = document?.data['email'] as String ?? "";
      nickname = document?.data['nickname'] as String ?? "";
      number = document?.data['number'] as String ?? "";
    }
  }

  String id;
  String nickname;
  String firstname;
  String lastname;
  String number;
  String email;
  String password;
  String confirmPassword;

  DocumentReference get firestoreRef =>
      Firestore.instance.document('users/$id');

  Future<void> saveData() async {
    await firestoreRef.setData(toMap());
  }

  Map<String, dynamic> toMap() {
    return {
      'firstname': firstname,
      'lastname': lastname,
      'email': email,
      'nickname': nickname,
      'number': number,
    };
  }
}
