class Vet {
  late String name;
  late String address;
  late String number;

  Vet({
    required this.name,
    required this.address,
    required this.number,
  });
}

List<Vet> vets = [
  Vet(
    name: 'MS Agrovet',
    address: 'Kathmandu',
    number: '9841360808',
  ),
  Vet(
    name: 'Duwadi AgroVet',
    address: 'Dhadhing, Besi',
    number: '9851003635',
  ),
  Vet(
    name: 'Limgha Agrovet ',
    address: 'Rupandehi',
    number: '9857033299',
  ),
  Vet(
    name: 'Modern Agrovet',
    address: 'Banke, Nepalgunj',
    number: '9858024422',
  ),
  Vet(
    name: 'Godawari Krishi ',
    address: 'Anarmani - 3, Jhapa ',
    number: '9842754797',
  ),
  Vet(
    name: 'Bhattarai Agrovet Centre',
    address: 'Birtamod, Jhapa',
    number: '9852674911',
  ),
  Vet(
    name: 'New Pathivara Agrovet ',
    address: 'Deumai',
    number: '9863774300',
  ),
];
