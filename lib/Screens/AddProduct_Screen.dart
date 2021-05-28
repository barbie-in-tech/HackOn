import 'dart:io';

import 'package:flutter/material.dart';
//import 'package:thrifter_hackon/widgets/ImagePicker.dart';
import 'package:thrifter_hackon/widgets/SliverHeader.dart';

import '../main.dart';

class AddProduct extends StatefulWidget {
  @override
  _AddProductState createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  final List productCategories = [
    "Men",
    "Women",
    "Kids",
    "Unisex",
  ];

  final _addFormKey = GlobalKey<FormState>();

  File imagePick;

  void _imagePicked(File image) {
    imagePick = image;
  }

  String proCategory;

  @override
  Widget build(BuildContext context) {
    // print(userId);
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            sliverHeader(
              Icons.navigate_before,
              "Add Product Details",
              () => Navigator.of(context).pop(),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Form(
                    key: _addFormKey,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8.0,
                        vertical: 5,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          //ImgPicker(_imagePicked),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: "Closet Name",
                              labelText: "Closet Name",
                            ),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: "Product Name",
                              labelText: "Product Name",
                            ),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: "Price",
                              labelText: "Price",
                            ),
                            keyboardType: TextInputType.number,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: "Description",
                              labelText: "Description",
                            ),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: "Size - L/M/XL/XXL",
                              labelText: "Size",
                            ),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: "Color",
                              labelText: "Color",
                            ),
                          ),
                          DropdownButtonFormField(
                            value: proCategory,
                            decoration: InputDecoration(
                              hintText: "Category",
                              labelText: "Category",
                            ),
                            items: productCategories == null
                                ? null
                                : productCategories.map(
                                    (cat) {
                                      return new DropdownMenuItem(
                                        child: new Text(cat),
                                        value: cat,
                                      );
                                    },
                                  ).toList(),
                            onChanged: (newValue) {
                              setState(() {
                                proCategory = newValue;
                                // print(proCategory);
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  );
                },
                childCount: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
