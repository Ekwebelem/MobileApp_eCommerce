import 'package:flutter/material.dart';
import 'package:io/ansi.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:t_store/common/widgets/images/t_rounded_image.dart';
import 'package:t_store/common/widgets/layouts/grid_layout.dart';
import 'package:t_store/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:t_store/features/shop/screens/home/widgets/homes_categories.dart';
import 'package:t_store/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return     Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            const TPrimaryHeaderContainer(
              child: Column(
              children: [
                /// AppBar
                 THomeAppBar(),
                 SizedBox(height: TSizes.spaceBtwSections,),
                /// Searchbar 
                 TSearchContainer(text: 'Search in Store',),
                 SizedBox(height: TSizes.spaceBtwSections,),
                
                 Padding(
                  padding:   EdgeInsets.only(left: TSizes.defaultSpace), child: Column(
                    children: [
                       TSectionHeading(title: "Popular Categories", showActionButton: false, textColor: Colors.white,),
                        SizedBox(height: TSizes.spaceBtwItems,),

                       /// Categories 
                       THomeCategories()
                        ],
                  ),
                  ),
              ],
            )),
            /// Body 
            Padding(
              padding:  const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  const TPromoSlider(banners: [TImages.promoBanner1, TImages.promoBanner2,  TImages.promoBanner3, TImages.banner3, TImages.banner4,],),
                    const SizedBox(height: TSizes.spaceBtwSections,),

                /// Heading 
                   TSectionHeading(title: "Popular Products", onPressed: (){},),
                        const SizedBox(height: TSizes.spaceBtwItems,),

                  /// Popular Products
                  
                  TGridLayout(
                    itemCount: 6, 
                  itemBuilder: (context, index, imageUrl, title, brandTitle, price, discount) {
                                return TProductCardVertical(
                                            imageUrl: imageUrl,
                                            title: title,
                                            brandTitle: brandTitle,
                                            price: price,
                                            discount: discount,
                                );
                              },
                  
                  //(_, index)  => const TProductCardVertical() ,
                  ),
                ],
              ),
              
            )
           
            
          ],
        ),
      ),
    );
  }
}

