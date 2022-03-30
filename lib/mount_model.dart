import 'dart:convert';

class MountModel {
  String path;
  String name;
  String location;
  String description;

  MountModel({
    this.path = '',
    this.name = '',
    this.location = '',
    this.description = '',
  });

  Map<String, dynamic> toMap() {
    return {
      'image': path,
      'name': name,
      'location': location,
      'description': description,
    };
  }

  factory MountModel.fromMap(Map<String, dynamic> map) {
    return MountModel(
      path: map['path'] ?? '',
      name: map['name'] ?? '',
      location: map['location'] ?? '',
      description: map['description'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory MountModel.fromJson(Map String, dynamic source) =>
      MountModel.fromMap(json.decode(source));
}

final List<MountModel> mountItems = [
  MountModel(
      path: "assets/images/slide1.jpg",
      name: 'Technology in Farming',
      description:
          'Semeru, or Mount Semeru, is an active volcano in East Java, Indonesia. It is located in the subduction zone, where the Indo-Australia plate subducts under the Eurasia plate. .',
      location: 'East Java'),
  MountModel(
      path: "assets/images/slide2.jpg",
      name: 'Mount Merbaru',
      description:
          'Mount Merbabu is a dormant stratovolcano in Central Java province on the Indonesian island of Java. ',
      location: 'Central Java'),
  MountModel(
      path: "assets/images/slide3.jpg",
      name: 'Mauna Loa',
      description:
          'Mauna Loa is one of five volcanoes that form the Island of Hawaii in the U.S. state of Hawai in the Pacific Ocean. The largest subaerial volcano in both mass and volume, Mauna Loa has historically been considered the largest volcano on Earth, dwarfed only by Tamu Massif.',
      location: 'Hawaii'),
  MountModel(
      path: "assets/images/slide4.jpg",
      name: 'Mount Vesuvius',
      description:
          'Mount Vesuvius is a somma-stratovolcano located on the Gulf of Naples in Campania, Italy, about 9 km east of Naples and a short distance from the shore. It is one of several volcanoes which form the Campanian volcanic arc.',
      location: 'Italy'),
  MountModel(
      path: "assets/images/slide5.jpg",
      name: 'Spices Business',
      description:
          'Popocatépetl is an active stratovolcano located in the states of Puebla, Morelos, and Mexico in central Mexico. It lies in the eastern half of the Trans-Mexican volcanic belt. At 5,426 m it is the second highest peak in Mexico, after Citlaltépetl at 5,636 m.',
      location: 'Mexico')
];
