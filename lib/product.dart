import 'package:flutter/material.dart';
import 'package:foodie_app/model/product_model.dart';
import 'package:foodie_app/viewmodel/product_provider.dart';
import 'package:provider/provider.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  void initState() {
    super.initState();
    Provider.of<ProductProvider>(context, listen: false).fetchData();
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProductProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List'),
      ),
      body: provider.isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : _buildData(provider),
    );
  }

  _buildData(ProductProvider provider) {
    if (provider.product == null) {
      return const Center(
        child: Text('No data'),
      );
    } else {
      return Material(
        child: ListView.builder(
          itemCount: provider.product!.products.length,
          itemBuilder: (context, index) {
            Product product = provider.product!.products[index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Text(product.title),
                subtitle: Text('Rs : ${product.price}'),
              ),
            );
          },
        ),
      );
    }
  }
}
