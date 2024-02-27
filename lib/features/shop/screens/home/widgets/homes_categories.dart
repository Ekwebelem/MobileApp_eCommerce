
import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/image_text_widget/vertical_image_text.dart';
import 'package:t_store/utils/constants/image_strings.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    // Define a list of image and title pairs
    final List<Map<String, dynamic>> categories = [
      {"image": TImages.shoeIcon, "title": "Shoes"},
      {"image": TImages.electronicsIcon, "title": "Electtonic"},
      {"image": TImages.clothIcon, "title": "Cloth"},
      {"image": TImages.cosmeticsIcon, "title": "Cosmetics"},
      {"image": TImages.jeweleryIcon, "title": "Toy"},
      {"image": TImages.furnitureIcon, "title": "Furniture"},
    ];

    return SizedBox(
     height: 80,
     child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: 6,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (_, index) {
                             final category = categories[index];
          return TVerticalImageText(
            image: category['image'],
            title: category['title'],
            onTap: () {
              // Add your onTap functionality here
            },
          );
              // return   
              // TVerticalImageText(image: TImages.shoeIcon, title: 'Shoes', onTap: (){},);
                          }
                          
                          ),
    );
  }
}
