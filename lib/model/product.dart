class Product{
  String? productImage;//nullable type if we didinot upload any credential it didnot hrow an error
  String? name;
  double? price;
  int? quantity;
  bool isFavorite;
  bool? isAddToCart;

  Product({this.isAddToCart,this.isFavorite=false,this.name,this.price,this.productImage,this.quantity});

}