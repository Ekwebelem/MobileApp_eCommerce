import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/enums.dart';
import 'package:t_store/utils/constants/sizes.dart';

class TBrandTitleText extends StatelessWidget {
  const TBrandTitleText({
    super.key,
    this.color,
    this.maxLines = 1, 
    required this.brandTitle, 
    this.textAlign = TextAlign.center, 
    this.brandTextSize = TextSizes.small, required String brandSubTitle,
  });

  final Color? color;
  final String brandTitle;
  final int maxLines;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;


  @override
  Widget build(BuildContext context) {
    return Text(
      brandTitle, 
      textAlign: textAlign,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      // Check which brandSize is required and set that style 
      style: brandTextSize == TextSizes.small
      ?  Theme.of(context).textTheme.labelMedium!.apply(color: color)
      : brandTextSize == TextSizes.medium 
       ?  Theme.of(context).textTheme.bodyLarge!.apply(color: color)
       : brandTextSize == TextSizes.large 
       ?  Theme.of(context).textTheme.titleLarge!.apply(color: color)
       : Theme.of(context).textTheme.bodyMedium!.apply(color: color)
       );
    
  }
}