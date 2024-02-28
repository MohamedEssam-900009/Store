import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../models/product_model.dart';
import '../services/update_product.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_fields.dart';

class UpdateProductPage extends StatefulWidget {
  const UpdateProductPage({super.key});

  static String id = 'update product';

  @override
  State<UpdateProductPage> createState() => _UpdateProductPageState();
}

class _UpdateProductPageState extends State<UpdateProductPage> {
  String? productName, description, image, price;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Update Product',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 100.0),
                CustomTextField(
                  onChanged: (data) {
                    productName = data;
                  },
                  hintText: 'Product Name',
                ),
                const SizedBox(height: 10.0),
                CustomTextField(
                  onChanged: (data) {
                    description = data;
                  },
                  hintText: 'Description',
                ),
                const SizedBox(height: 10.0),
                CustomTextField(
                  onChanged: (data) {
                    price = data;
                  },
                  inputType: TextInputType.number,
                  hintText: 'Price',
                ),
                const SizedBox(height: 10.0),
                CustomTextField(
                  onChanged: (data) {
                    image = data;
                  },
                  hintText: 'Image',
                ),
                const SizedBox(height: 50.0),
                CustomButton(
                  text: 'Update',
                  onTap: () {
                    isLoading = true;
                    setState(() {});
                    try {
                      updateProduct(product);
                      print('Success');
                    } catch (e) {
                      print(e.toString());
                    }
                    isLoading = false;
                    setState(() {});
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void updateProduct(ProductModel product) {
    UpdateProductService().updateProduct(
      title: productName!,
      price: price!,
      description: description!,
      image: image!,
      category: product.category,
    );
  }
}
