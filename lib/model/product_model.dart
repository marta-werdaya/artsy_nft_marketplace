class ProductModel {
  final int id;
  final String imageUrl;
  final String sellerName;
  final String nftName;
  final double price;
  final int sellerId;

  const ProductModel({
    required this.id,
    required this.imageUrl,
    required this.sellerName,
    required this.nftName,
    required this.price,
    required this.sellerId,
  });
}
