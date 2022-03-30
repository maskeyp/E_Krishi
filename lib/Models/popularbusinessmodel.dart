

class Popular {
  String imageUrl;
  String city;
  String country;
  String description;

  Popular({
    required this.imageUrl,
    required this.city,
    required this.country,
    required this.description,
  });
}

List<Popular> products = [
  Popular(
    imageUrl: 'assets/images/dairyfarm.jpg',
    city: 'Dairy Farming',
    country: 'Terai',
    description:
        'Due to the wide range of dairy cows and buffalos in the country, dairy farming becomes a lucrative business opportunity for people who are involved in dairy farms.',
  ),
  Popular(
    imageUrl: 'assets/images/cropfarm.jpeg',
    city: 'Crop Farm',
    country: 'Terail & Hill',
    description:
        'Nepal is a gangetic plain of alluvial soil, which is known to be one of the most fertile soils. This soil paves the way for effective crop farming in the country. The farmers could grow crops like rice, wheat, millet, barley, coffee and others for self-sufficiency and for trading.',
  ),
  Popular(
    imageUrl: 'assets/images/organicfarm.jpg',
    city: 'Organic Farm',
    country: 'Illam',
    description:
        'Due to the abundance of fertile land in Nepal, farming in Nepal has been focusing on sustainable agricultural practices that are environment friendly. This makes Nepal a forthcoming place to start off with organic farming business.',
  ),
  Popular(
    imageUrl: 'assets/images/horticulture.jpg',
    city: 'Horticulture Business',
    country: 'Mountains',
    description:
        'Horticulture is the area of agriculture that involves the science of growing and caring for plants to carry out various human purposes such as repairing the environment and personal aesthetics. .',
  ),
  Popular(
    imageUrl: 'assets/images/slide6.jpg',
    city: 'Spices Business',
    country: 'Nepal',
    description: 'Visit New York for an amazing and unforgettable adventure.',
  ),
];
