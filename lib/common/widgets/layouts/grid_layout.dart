

import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/image_strings.dart';
//import 'package:t_store/common/widgets/products/product_cards/product_card_vertical.dart';
//import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

class TGridLayout extends StatelessWidget {
  const TGridLayout({
    super.key, 
    required this.itemCount, 
    this.mainAxisExtent, 
    required this.itemBuilder,
  });

  final int itemCount;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext, int, String, String, String, String, String) itemBuilder;

  @override
  Widget build(BuildContext context) {
    
    return GridView.builder(
      itemCount: itemCount,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: TSizes.gridViewSpacing,
        crossAxisSpacing: TSizes.gridViewSpacing,
        mainAxisExtent: 288,
        ), itemBuilder: (context, index) {
        switch (index) {
          case 0:
            return itemBuilder(context, index, TImages.productImage1, 'Green Nike Air Shoes', 'Nike', '35.8', '25%');
          case 1:
            return itemBuilder(context, index, TImages.productImage2, 'White Canvas', 'Adidas', '50.0', '35%');
          case 2:
            return itemBuilder(context, index, TImages.productImage3, 'Black Army Jacket', 'Roberto Callay', '25.0', '45%');
          case 3:
            return itemBuilder(context, index, TImages.productImage4, 'Blue Pant Jean', 'Roi Alves', '45.0', '55%');
           case 4:
            return itemBuilder(context, index, TImages.productImage5, 'Navy Blue T-Shirt', 'CBA', '45.0', '65%');
           case 5:
            return itemBuilder(context, index, TImages.productImage6, 'Black Nike Slippers', 'Nike', '45.0', '75%');
          default:
            return const SizedBox(); // Handle any additional items as needed
        }
      },
        
        // itemBuilder
        
        );
  }
}

