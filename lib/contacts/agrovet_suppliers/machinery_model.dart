class Machinery {
  late String name;
  late String address;
  late String number;

  Machinery({
    required this.name,
    required this.address,
    required this.number,
  });
}

List<Machinery> machinerys = [
  Machinery(
    name: 'Agro Machinery Traders',
    address: 'Birtamod, Jhapa',
    number: '023-542633',
  ),
  Machinery(
    name: 'Machine Nepal',
    address: 'Saptakoshi Marg, Bargachi ',
    number: '9808987904',
  ),
  Machinery(
    name: 'Bhagwati Machinery Suppliers Pvt Ltd ',
    address: 'Chandragiri ',
    number: '9847820855',
  ),
  Machinery(
    name: 'Nepal Machinery Impex',
    address: 'Birjung',
    number: '9802772386',
  ),
];
