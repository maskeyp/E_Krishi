final String imageAssetsRoot = "assets/images/";
final String image1 = _getImagePath("Chamadora.png");
final String image2 = _getImagePath("JadePlant.jpg");
final String image3 = _getImagePath("3.jpeg");
final String image4 = _getImagePath("4.jpeg");
final String image5 = _getImagePath("5.jpeg");
final String image6 = _getImagePath("6.jpeg");
final String logo = _getImagePath("logo1.png");

String _getImagePath(String fileName) {
  return imageAssetsRoot + fileName;
}
