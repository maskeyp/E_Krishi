class Farm {
  late String name;
  late String image;

  Farm({
    required this.name,
    required this.image,
  });
}

List<Farm> farms = [
  Farm(name: 'Birds Farm', image: 'assets/images/birds.jpg'),
  Farm(name: 'Fish Farm', image: 'assets/images/fish.jpg'),
  Farm(name: 'Animal Farm', image: 'assets/images/animal.jpg'),
];
