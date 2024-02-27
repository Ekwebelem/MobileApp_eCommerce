import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/texts/t_brand_title_text.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/enums.dart';
import 'package:t_store/utils/constants/sizes.dart';

class TBrandTitleWithVerificationIcon extends StatelessWidget {
  const TBrandTitleWithVerificationIcon({
    super.key,
    this.textColor,
    this.maxLines = 1, 
    required this.brandTitle, 
    this.iconColor = TColors.primary, 
    this.textAlign = TextAlign.center, 
    this.brandTextSize = TextSizes.small, 
  });

  final String brandTitle;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;


  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: TBrandTitleText(
            brandTitle: brandTitle,
            color: textColor,
            maxLines: maxLines,
            textAlign: textAlign,
            brandTextSize: brandTextSize, brandSubTitle: '',
            )
          ),
        const SizedBox(width: TSizes.xs,),
        Icon(Iconsax.verify5, color: iconColor, size: TSizes.iconXs,),
        
      ],
    );
  }
}