import 'package:cloud_firestore/cloud_firestore.dart';

class Court {
  String id = "";
  Terrain? court;

  Court(DocumentSnapshot snapshot){
    id = snapshot.id;
    Map<String, dynamic> court = snapshot.data() as Map<String, dynamic>;
    court = court["COURT"];
  }

}

class Terrain {
  String description;
  String img_court;
  String location;
  double note;

  Terrain({
    required this.description,
    required this.img_court,
    required this.location,
    required this.note,
  });

  Map<String, dynamic> toMap() {
    return {
      'DESCRIPTION': description,
      'IMG_COURT': img_court,
      'LOCATION': location,
      'NOTE': note,
    };
  }

  Terrain.fromMap(Map<String, dynamic> terrainMap)
      : description = terrainMap["DESCRIPTION"],
        img_court = terrainMap["IMG_COURT"],
        location = terrainMap["LOCATION"],
        note = terrainMap["NOTE"];

}