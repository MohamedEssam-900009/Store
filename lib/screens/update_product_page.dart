import 'package:flutter/material.dart';
import 'package:store/widgets/custom_text_fields.dart';
import 'package:store/widgets/custome_button.dart';

class UpdateProductPage extends StatelessWidget {
  const UpdateProductPage({super.key});

  static String id = 'update product';

  @override
  Widget build(BuildContext context) {
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomFormTextField(
              hintText: 'Product Name',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomFormTextField(
              hintText: 'Description',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomFormTextField(
              hintText: 'Price',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomFormTextField(
              hintText: 'Image',
            ),
            const SizedBox(
              height: 50,
            ),
            CustomButton(text: 'Update')
          ],
        ),
      ),
    );
  }
}
