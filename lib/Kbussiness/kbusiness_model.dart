class Kbusiness {
  String imageUrl;
  String city;
  String country;
  String description;

  Kbusiness({
    required this.imageUrl,
    required this.city,
    required this.country,
    required this.description,
  });
}

List<Kbusiness> destinations = [
  Kbusiness(
    imageUrl: 'assets/images/topagr1.jpg',
    city: 'Vegetable Farm',
    country: 'Terai',
    description:
        'Organic vegetable farm growing organic vegetables that are cauliflower, cabbage, broccoli, sweet potatoes, capsicum, pumpkin, tomato, potato, radish, carrot, asparagus, bitter gourd, and chayote simply and sustainably.',
  ),
  Kbusiness(
    imageUrl: 'assets/images/slide2.jpg',
    city: 'Rice Planting',
    country: 'Terail & Hill',
    description:
        'The cycle of rice is 190 days and the harvest season lasts for about 30 days in mid-September to October. The process itself begins with leveling, rolling and preparing the field, flooding, airdropping the seed and fertilizing.',
  ),
  Kbusiness(
    imageUrl: 'assets/images/slide3.jpg',
    city: 'Tea Garden',
    country: 'Illam',
    description:
        'Ilam, the tea garden of Nepal, is located about 700 km east of Kathmandu. It is famous for natural scenery and landscapes, tea production, and diverse agricultural economy.',
  ),
  Kbusiness(
    imageUrl: 'assets/images/sheep.jpeg',
    city: 'Sheep Farming',
    country: 'Mountains',
    description:
        'Sheep are raised principally for their meat lamb and mutton, milk sheep milk, and fiber wool. They also yield sheepskin and parchment.',
  ),
  Kbusiness(
    imageUrl: 'assets/images/slide6.jpg',
    city: 'Spices Business',
    country: 'Nepal',
    description:
        'Nepal is rich in flavorful organic spices. Nepal produces ginger, round chilies, cinnamon, coriander turmeric ',
  ),
];
