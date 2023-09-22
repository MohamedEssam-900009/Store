import 'package:flutter/material.dart';
import 'package:store/models/product_model.dart';
import 'package:store/services/update_product.dart';
import 'package:store/widgets/custom_text_fields.dart';
import 'package:store/widgets/custome_button.dart';

class UpdateProductPage extends StatelessWidget {
  UpdateProductPage({super.key});

  static String id = 'update product';
  String? productName, description, image, price;

  @override
  Widget build(BuildContext context) {
    ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    return Scaffold(
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
              const SizedBox(
                height: 100.0,
              ),
              CustomTextField(
                onChanged: (data) {
                  productName = data;
                },
                hintText: 'Product Name',
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                onChanged: (data) {
                  description = data;
                },
                hintText: 'Description',
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                onChanged: (data) {
                  price = data;
                },
                inputType: TextInputType.number,
                hintText: 'Price',
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                onChanged: (data) {
                  image = data;
                },
                hintText: 'Image',
              ),
              const SizedBox(
                height: 50,
              ),
              CustomButton(
                text: 'Update',
                onTap: () {
                  UpdateProductService().updateProduct(
                    title: productName!,
                    price: price!,
                    description: description!,
                    image: image!,
                    category: product.category,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
