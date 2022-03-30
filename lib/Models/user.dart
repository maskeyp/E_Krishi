import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  static const ID = "id";
  static const NAME = "name";
  static const EMAIL = "email";
  static const CART = "cart";

  late String id;
  late String name;
  late String email;

  UserModel({
    required this.id,
    required this.name,
    required this.email,
  });

  UserModel.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> snapshot) {
    name = (snapshot.data() as dynamic)[NAME];
    email = (snapshot.data() as dynamic)[EMAIL];
    id = (snapshot.data() as dynamic)[ID];
  }
}
