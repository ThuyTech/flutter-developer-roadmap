class Product {
  String? name;
  double? price;

  Product(this.name, this.price);
  Product.free(this.name) : price = 0;
  Product.discount(this.name, double originalPrice)
    : price = originalPrice * 0.8;


  // Tu khoa factory dung de return ve constructor minh muon
  factory Product.option(int check, String name, double price) {
    return check == 1 ? Product.free(name) : Product.discount(name, price);
  }


}
