import 'activity_model.dart';

class Destination {
  String imageUrl;
  String city;
  String country;
  String description;
  List<Activity> activities;

  Destination({
    required this.imageUrl,
    required this.city,
    required this.country,
    required this.description,
    required this.activities,
  });
}

List<Activity> activities = [
  Activity(
    imageUrl: 'assets/images/slide1.jpg',
    name: 'St. Mark\'s Basilica',
    type: 'Sightseeing Tour',
    startTimes: ['9:00 am', '11:00 am'],
    rating: 5,
    price: 30,
  ),
  Activity(
    imageUrl: 'assets/images/gondola.jpg',
    name: 'Walking Tour and Gonadola Ride',
    type: 'Sightseeing Tour',
    startTimes: ['11:00 pm', '1:00 pm'],
    rating: 4,
    price: 210,
  ),
  Activity(
    imageUrl: 'assets/images/murano.jpg',
    name: 'Murano and Burano Tour',
    type: 'Sightseeing Tour',
    startTimes: ['12:30 pm', '2:00 pm'],
    rating: 3,
    price: 125,
  ),
];

List<Destination> destinations = [
  Destination(
    imageUrl: 'assets/images/topagr1.jpg',
    city: 'Vegetable Farm',
    country: 'Terai',
    description:
        'Organic vegetable farm growing organic vegetables that are cauliflower, cabbage, broccoli, sweet potatoes.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/slide6.jpg',
    city: 'Spices Business',
    country: 'Nepal',
    description:
        'Nepal is rich in flavorful organic spices. Nepal produces ginger, round chilies, cinnamon, coriander turmeric ',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/slide3.jpg',
    city: 'Tea Garden',
    country: 'Illam',
    description:
        'Ilam, the tea garden of Nepal, is located about 700 km east of Kathmandu. It is famous for natural scenery',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/sheep.jpeg',
    city: 'Sheep Farming',
    country: 'Mountains',
    description:
        ' Sheep are raised principally for their  milk sheep milk, and fiber wool. They also yield sheepskin.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/slide2.jpg',
    city: 'Rice Planting',
    country: 'Terail & Hill',
    description:
        'The process itself begins with leveling, rolling and preparing the field, the seed and fertilizing.',
    activities: activities,
  ),
];
