class Product {
  int id;
  String name;
  String price;
  String description;
  String lastUpdate;
  int categoryId;
  String image;

  Product(
      {this.id,
        this.name,
        this.price,
        this.description,
        this.lastUpdate,
        this.categoryId,
        this.image});

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    price = json['price'].toString();
    description = json['description'];
    lastUpdate = json['last_update'];
    categoryId = json['category_id'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['price'] = this.price;
    data['description'] = this.description;
    data['last_update'] = this.lastUpdate;
    data['category_id'] = this.categoryId;
    data['image'] = this.image;
    return data;
  }
}
