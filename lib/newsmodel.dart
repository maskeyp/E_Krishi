final List<String> imagesList = [
  'https://cdn.pixabay.com/photo/2017/12/10/14/47/piza-3010062_1280.jpg',
  'https://cdn.pixabay.com/photo/2016/06/07/01/49/ice-cream-1440830_1280.jpg',
  'https://cdn.pixabay.com/photo/2017/12/27/07/07/brownie-3042106_1280.jpg',
  'https://cdn.pixabay.com/photo/2018/02/25/07/15/food-3179853_1280.jpg',
  'https://cdn.pixabay.com/photo/2015/10/26/11/10/honey-1006972_1280.jpg',
];

final fruitList = ["apple", 'orange', 'mango'];
final fruitMap = fruitList.asMap();

class NewsModel {
  final String title;
  final String imageName;

  NewsModel(
    this.title,
    this.imageName,
  );
}

List<NewsModel> NewsList = [
  NewsModel("Short Dress", "assets/images/fashion2.jpeg"),
  NewsModel("Office Formals", "assets/images/fashion1.jpeg"),
  NewsModel("Casual Jeans", "assets/images/fashion4.png"),
  NewsModel("Jeans Skirt", "assets/images/fashion3.jpg"),
];

class MyPageItem {
  String itemName;
  String path;
  MyPageItem(this.itemName, this.path);
}

List<MyPageItem> items = [
  MyPageItem("item 1", 'assets/images/1.jpg'),
  MyPageItem("item 2", 'assets/images/2.jpg'),
  MyPageItem("item 3", 'assets/images/3.jpg'),
  MyPageItem("item 4", 'assets/images/4.jpg'),
  MyPageItem("item 5", 'assets/images/5.jpg'),
];
