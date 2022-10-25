import 'dart:ffi';

import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';


// Future<List<Product>> fetchProducts(http.Client client) async {
//   final response = await client
//       .get(Uri.parse('http://172.16.3.62:5000/get_data'));
//   return compute(parseProducts, response.body);
// }

Future<List<Product>> fetchProducts(http.Client client) async {
  var url = Uri.parse("http://172.16.3.62:5000/get_data");
  final response = await client
      .get(url);
  return compute(parseProducts, response.body);
}

List<Product> parseProducts(String responseBody) {
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();
  return parsed.map<Product>((json) => Product.fromJson(json)).toList();
}

class Product {
  final int albumId; //##images album id
  final int id; //## product id
  final double price;
  final String title;
  final String image;
  final String description;
  final double rating;
  final String colors;
  final bool isFavourite, isPopular;
  final String thumbnailUrl;
  

  const Product({
    required this.albumId,
    required this.id,
    this.rating = 0.0,
    required this.price,
    required this.title,
    required this.image,
    required this.description,
    required this.colors,
    this.isFavourite = false,
    this.isPopular = false,
    required this.thumbnailUrl,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      albumId: json['albumId'] as int,
      id: json['id'] as int,
      rating: json['rating'] as double,
      price: json['price'] as double,
      title: json['title'] as String,
      image: json['images'] as String,
      description: json['description'] as String,
      colors:  json['color'] as String ,
      isFavourite: json['isFavourite'] as bool,
      isPopular: json['isPopular'] as bool,
      thumbnailUrl: json['thumbnailUrl'] as String,
      
    );
  }
}
