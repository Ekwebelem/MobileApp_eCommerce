
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/authentication/screens/signup/verify_email.dart';
import 'package:t_store/features/authentication/screens/signup/widgets/terms_conditions_checkbox.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class TSignupForm extends StatelessWidget {
  const TSignupForm({
    super.key,
  });



  @override
  Widget build(BuildContext context) {
     final dark = THelperFunctions.isDarkMode(context);
    return Form(
      child: Column(
        children: [
          /// First and Last Name 
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration:  InputDecoration(
                    labelText: TTexts.firstName,
                    labelStyle: TextStyle(color: dark ? TColors.light : TColors.dark,),  
                    prefixIcon: const Icon(Iconsax.user)
                    ),
                ),),
                  const SizedBox(width: TSizes.spaceBtwInputFields,),
               Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                    labelText: TTexts.lastName,
                    labelStyle: TextStyle(color: dark ? TColors.light : TColors.dark,),
                    prefixIcon: const Icon(Iconsax.user)
                    ),
                ),
                ),
            ],
          ),
             const SizedBox(height: TSizes.spaceBtwInputFields,),
                 TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                    labelText: TTexts.username,
                    labelStyle: TextStyle(color: dark ? TColors.light : TColors.dark,),
                    prefixIcon: const Icon(Iconsax.user_edit)
                    ),
                ),
               const SizedBox(height: TSizes.spaceBtwInputFields,),
                          /// Email
                    TextFormField(
                      decoration:  InputDecoration(
                        prefixIcon: const Icon(Iconsax.direct),
                        labelText: TTexts.email,
                        labelStyle: TextStyle(color: dark ? TColors.light : TColors.dark,),
                      ),
                    ),
                    const SizedBox(height: TSizes.spaceBtwInputFields,),
    
                    /// Phone No
                    TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Iconsax.call),
                        labelText: TTexts.phoneNo,
                        labelStyle: TextStyle(color: dark ? TColors.light : TColors.dark,),
                      ),
                    ),
                    const SizedBox(height: TSizes.spaceBtwInputFields,),
                
                    /// Password
                    TextFormField(
                      decoration:  InputDecoration(
                        prefixIcon: const Icon(Iconsax.password_check),
                        labelText: TTexts.password,
                        labelStyle: TextStyle(color: dark ? TColors.light : TColors.dark,),
                        suffixIcon: const Icon(Iconsax.eye_slash),
                      ),
                    ),
    
                    const SizedBox(height: TSizes.spaceBtwSections,),
    
                    /// Terms & Conditions Checkbox
                    const TTermsAndConditionCheckbox(),
    
                  const SizedBox(height: TSizes.spaceBtwSections,),
    
                    ///Sign Up Button 
                  SizedBox(width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => Get.to(() => const VerifyEmailScreen()), 
                    child: const Text(TTexts.createAccount)),)
        ],
      ),
      );
  }
}
