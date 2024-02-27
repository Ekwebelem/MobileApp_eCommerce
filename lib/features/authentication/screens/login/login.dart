import 'package:flutter/material.dart';
import 'package:t_store/common/styles/spacing_styles.dart';
import 'package:t_store/common/widgets/login_signup/form_divider.dart';
import 'package:t_store/common/widgets/login_signup/social_buttons.dart';
import 'package:t_store/features/authentication/screens/login/widgets/login_form.dart';
import 'package:t_store/features/authentication/screens/login/widgets/login_header.dart';
import 'package:t_store/utils/constants/sizes.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
   

    return  const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children:  [
              /// Logo, Title & Sub-Title
              TLoginHeader(),

              /// Forn
              TLoginForm(),

                /// Divider 
               TFormDivider(),

                 SizedBox(height: TSizes.spaceBtwSections,),

                ///  Footer
                TSocialButton()
            ],
          ),
          ),
          ),
      );
    
  }
}
