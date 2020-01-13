import 'package:mobx/mobx.dart';

class ProductModel with Store{
  int id;
  String name;
  String description;
  int price;
  String photo;

  @observable
  int qtd;

  ProductModel({this.id, this.name, this.description, this.price, this.photo,this.qtd});

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    price = json['price'];
    photo = json['photo'];
    qtd = json['qtd'] ?? 1;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['description'] = this.description;
    data['price'] = this.price;
    data['photo'] = this.photo;
    data['qtd'] = this.qtd;
    return data;
  }

  @override
  int get hashCode => this.id;

  @override
  bool operator == (other) => other.id == this.id;
  
}
