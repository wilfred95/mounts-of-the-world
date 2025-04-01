import 'package:flutter/material.dart';

class MountModel {
  String path;
  String name;
  String location;
  String description;
  MountModel(
      {this.path = '',
      this.name = '',
      this.location = '',
      this.description = ''});
}

final Color mainColor = Color(0xFFFF5656);

final List<MountModel> mountItems = [
  MountModel(
      path:
          'https://images.pexels.com/photos/260590/pexels-photo-260590.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260',
      name: 'Mount Semeru',
      description:
          'Semeru, or Mount Semeru, is an active volcano in East Java, Indonesia. It is located in the subduction zone, where the Indo-Australia plate subducts under the Eurasia plate. It is the highest mountain on the island of Java.',
      location: 'East Java'),
  MountModel(
      path:
          'https://images.pexels.com/photos/5627275/pexels-photo-5627275.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260',
      name: 'Mount Merbaru',
      description:
          'Mount Merbabu is a dormant stratovolcano in Central Java province on the Indonesian island of Java. The name Merbabu could be loosely translated as Mountain of Ash from the Javanese combined words; Meru means mountain and awu or abu means ash.',
      location: 'Central Java'),
  MountModel(
      path:
          'https://images.pexels.com/photos/5241381/pexels-photo-5241381.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260',
      name: 'Mauna Loa',
      description:
          'Mauna Loa is one of five volcanoes that form the Island of Hawaii in the U.S. state of Hawai in the Pacific Ocean. The largest subaerial volcano in both mass and volume, Mauna Loa has historically been considered the largest volcano on Earth, dwarfed only by Tamu Massif.',
      location: 'Hawaii'),
  MountModel(
      path:
          'https://images.pexels.com/photos/1680247/pexels-photo-1680247.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
      name: 'Mount Vesuvius',
      description:
          'Mount Vesuvius is a somma-stratovolcano located on the Gulf of Naples in Campania, Italy, about 9 km east of Naples and a short distance from the shore. It is one of several volcanoes which form the Campanian volcanic arc.',
      location: 'Italy'),
  MountModel(
      path:
          'https://images.pexels.com/photos/1680247/pexels-photo-1680247.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
      name: 'Mount Popocatépetl',
      description:
          'Popocatépetl is an active stratovolcano located in the states of Puebla, Morelos, and Mexico in central Mexico. It lies in the eastern half of the Trans-Mexican volcanic belt. At 5,426 m it is the second highest peak in Mexico, after Citlaltépetl at 5,636 m.',
      location: 'Mexico'),
  MountModel(
      path:
          'https://images.pexels.com/photos/260590/pexels-photo-260590.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260',
      name: 'Mount Semeru',
      description:
          'Semeru, or Mount Semeru, is an active volcano in East Java, Indonesia. It is located in the subduction zone, where the Indo-Australia plate subducts under the Eurasia plate. It is the highest mountain on the island of Java.',
      location: 'East Java'),
  MountModel(
      path:
          'https://images.pexels.com/photos/1680247/pexels-photo-1680247.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
      name: 'Mount Vesuvius',
      description:
          'Mount Vesuvius is a somma-stratovolcano located on the Gulf of Naples in Campania, Italy, about 9 km east of Naples and a short distance from the shore. It is one of several volcanoes which form the Campanian volcanic arc.',
      location: 'Italy'),
];

class CategoryModel {
  String category;
  IconData? icon;

  CategoryModel({this.category = '', this.icon});
}

class AppBottomBarItem {
  IconData? icon;
  bool isSelected;
  String label;

  AppBottomBarItem({this.icon, this.label = '', this.isSelected = false});
}

final List<CategoryModel> categories = [
  CategoryModel(category: 'Mountain', icon: Icons.terrain),
  CategoryModel(category: 'Forest', icon: Icons.park),
  CategoryModel(category: 'Beach', icon: Icons.beach_access),
  CategoryModel(category: 'Hiking', icon: Icons.directions_walk)
];
