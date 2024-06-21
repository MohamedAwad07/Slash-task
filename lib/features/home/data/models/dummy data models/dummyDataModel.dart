import 'dart:convert';
import 'package:dio/dio.dart';

class Product {
  final int id;
  final String name;
  final double price;
  final String image;

  Product({required this.id, required this.name, required this.price, required this.image});

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      name: json['name'],
      price: json['price'],
      image: json['image'],
    );
  }
}
class DummyData {
  final List<Product> bestSelling;
  final List<Product> newArrival;
  final List<Product> recommendedForYou;

  DummyData({required this.bestSelling, required this.newArrival, required this.recommendedForYou});

  factory DummyData.fromJson(Map<String, dynamic> json) {
    var bestSellingList = json['bestSelling'] as List;
    var newArrivalList = json['newArrival'] as List;
    var recommendedForYouList = json['recommendedForYou'] as List;

    List<Product> bestSelling = bestSellingList.map((i) => Product.fromJson(i)).toList();
    List<Product> newArrival = newArrivalList.map((i) => Product.fromJson(i)).toList();
    List<Product> recommendedForYou = recommendedForYouList.map((i) => Product.fromJson(i)).toList();

    return DummyData(
      bestSelling: bestSelling,
      newArrival: newArrival,
      recommendedForYou: recommendedForYou,
    );
  }
}

const String dummyDataLink = "https://drive.google.com/uc?export=download&id=1qmGa3jeCwJBdtfHp9vWVvuP6r8X3Glg8";

Future<DummyData?> fetchDummyData() async {
  final dio = Dio();
  final response = await dio.get(dummyDataLink);

  if (response.statusCode == 200) {
    final jsonResponse = json.decode(response.data);
    return DummyData.fromJson(jsonResponse);
  }
  return null;
}
