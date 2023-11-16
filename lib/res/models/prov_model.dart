
import 'package:cloud_firestore/cloud_firestore.dart';

class ProviderModel{
  String ?id;
  final String providerName;
  final String phone;
  final String email;
  final String service;
  ProviderModel({
    this.id='',
    required this.providerName,
    required this.phone,
    required this.email,
    required this.service,
  });
    toJson(){
      return{
  'id':id,
  'providerName':providerName,
  'phone':phone,
  'email':email,
        'service':service,
  };
    }
    factory ProviderModel.fromJson(
      DocumentSnapshot<Map<String , dynamic>>snapshot,
        ) {
final json= snapshot.data()!;
  return ProviderModel(
        id:json["id"],
       providerName:json["providerName"],
      phone:json["phone"],
           email:json["email"],
    service:json["service"],
);
}

  }



