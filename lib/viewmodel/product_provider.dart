import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:foodie_app/model/product_model.dart';
import 'package:http/http.dart' as http;

class ProductProvider extends ChangeNotifier {
  ProductListResponse? product;
  bool _isLoading = false;

  bool get isLoading => _isLoading;

  setLoading(bool loading) {
    _isLoading = loading;
  }

  Future<void> fetchData() async {
    const url = 'https://dummyjson.com/products';
    
    final response = await http.get(Uri.parse(url));

    try {
      setLoading(true);
      product = null;
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        product = ProductListResponse.fromJson(data);
        setLoading(false);
        notifyListeners();
      } else {
        setLoading(false);
        product = null;
        debugPrint('Something Error ${response.statusCode}');
      }
    } catch (e) {
      setLoading(false);
      product = null;
      debugPrint('Exception : $e');
      rethrow;
    }
  }
}
