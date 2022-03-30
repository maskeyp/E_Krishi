class Grid {
  String imageUrl;
  String city;
  String country;
  String description;

  Grid({
    required this.imageUrl,
    required this.city,
    required this.country,
    required this.description,
  });
}

List<Grid> grids = [
  Grid(
    imageUrl: 'assets/images/topagr1.jpg',
    city: 'Vegetable Farm',
    country: 'Terai',
    description: 'Visit Venice for an amazing and unforgettable adventure.',
  ),
  Grid(
    imageUrl: 'assets/images/slide3.jpg',
    city: 'Tea Garden',
    country: 'Illam',
    description: 'Visit New Delhi for an amazing and unforgettable adventure.',
  ),
  Grid(
    imageUrl: 'assets/images/sheep.jpeg',
    city: 'Sheep Farming',
    country: 'Mountains',
    description: 'Visit Sao Paulo for an amazing and unforgettable adventure.',
  ),
  Grid(
    imageUrl: 'assets/images/slide6.jpg',
    city: 'Spices Business',
    country: 'Nepal',
    description: 'Visit New York for an amazing and unforgettable adventure.',
  ),
];
