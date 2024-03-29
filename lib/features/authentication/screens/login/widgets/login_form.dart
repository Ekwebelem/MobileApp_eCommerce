import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/authentication/screens/password_configuration/forgot_password.dart';
import 'package:t_store/features/authentication/screens/signup/signup.dart';
import 'package:t_store/navigation_menu.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';


class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
        child: Column(
          children: [
            /// Email
            TextFormField(
              decoration:  InputDecoration(
                prefixIcon: const Icon(Iconsax.direct_right),
                labelText: TTexts.email, 
                 labelStyle: TextStyle(color: dark ? TColors.light : TColors.dark,)      
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
            const SizedBox(height: TSizes.spaceBtwInputFields / 2,),
        
            /// Remember Me & Forget Password 
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// Remember Me 
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value){}),
                    const Text(TTexts.rememberMe),
                  ],
                ),
        
                /// Forget Password
                TextButton(
                  onPressed: ()=> Get.to(() => const ForgetPassword()), 
                  child: const Text(TTexts.forgetPassword),),
              ],
            ),
            const SizedBox(height: TSizes.spaceBtwSections,),
        
            /// Sign In Button 
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: ()=> Get.to(() => const NavigationMenu()), 
                child: const Text(TTexts.signIn)),
            ),
    
            const SizedBox(height: TSizes.spaceBtwItems,),
            /// Create Account Button 
             SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: ()=> Get.to(() => const SignupScreen()), 
                child: const Text(TTexts.createAccount)),
            ),
          ],
        ),
      ),
      );
  }
}
