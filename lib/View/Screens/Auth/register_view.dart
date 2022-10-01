import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:your_chief/Controllers/Auth/register_controller.dart';
import 'package:your_chief/Core/Constants/app_translation_keys.dart';
import 'package:your_chief/View/Widgets/custom_outlined_form_field.dart';
import 'package:your_chief/View/Widgets/primary_button.dart';
import 'package:your_chief/View/Widgets/social_auth_button.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 28),
        child: GetBuilder<RegisterController>(
          builder: (controller) => Form(
            key: controller.formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: CustomOutlinedFormField(
                        label: AppTranslationKeys.fname.tr,
                        controller: controller.fnameController,
                        validator: controller.nameValidator,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: CustomOutlinedFormField(
                        label: AppTranslationKeys.lname.tr,
                        controller: controller.lnameController,
                        validator: controller.nameValidator,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomOutlinedFormField(
                  label: AppTranslationKeys.phone.tr,
                  prefix: Icon(Icons.call_outlined),
                  controller: controller.phoneController,
                  validator: controller.phoneValidator,
                  keyboardType: TextInputType.phone,
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomOutlinedFormField(
                  label: AppTranslationKeys.email.tr,
                  prefix: Icon(Icons.email_outlined),
                  controller: controller.emailController,
                  validator: controller.emailValidator,
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomOutlinedFormField(
                  label: AppTranslationKeys.password.tr,
                  obscure: controller.isPasswordHidden,
                  prefix: Icon(Icons.lock_outline),
                  suffix: IconButton(
                    icon: controller.isPasswordHidden
                        ? Icon(Icons.visibility)
                        : Icon(Icons.visibility_off),
                    onPressed: controller.togglePasswordVisiblity,
                  ),
                  controller: controller.passwordController,
                  validator: controller.paswordValidator,
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomOutlinedFormField(
                  label: AppTranslationKeys.confirmPass.tr,
                  obscure: controller.isConfirmHidden,
                  prefix: Icon(Icons.confirmation_number_outlined),
                  suffix: IconButton(
                    icon: controller.isConfirmHidden
                        ? Icon(Icons.visibility)
                        : Icon(Icons.visibility_off),
                    onPressed: controller.toggleConfirmVisiblity,
                  ),
                  controller: controller.confirmController,
                  validator: controller.confirmValidator,
                ),
                const SizedBox(
                  height: 20,
                ),
                PrimaryButton(
                  onPressed: () => controller.validate(context),
                  text: AppTranslationKeys.register.tr,
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    const Expanded(
                      child: Divider(
                        endIndent: 12,
                        thickness: 1,
                      ),
                    ),
                    Text(
                      AppTranslationKeys.or.tr,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Expanded(
                      child: Divider(
                        indent: 12,
                        thickness: 1,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                SocialAuthButton(
                  text: AppTranslationKeys.registerGoogle.tr,
                  icon: const Icon(
                    Ionicons.logo_google,
                    color: Colors.redAccent,
                  ),
                  onPressed: controller.registerWithGoogle,
                  textStyle: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    primary: Colors.redAccent,
                    side: BorderSide(color: Colors.redAccent),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                SocialAuthButton(
                  text: AppTranslationKeys.registerFacebook.tr,
                  icon: const Icon(
                    Ionicons.logo_facebook,
                    color: Colors.blueAccent,
                  ),
                  onPressed: controller.registerWithFacebook,
                  textStyle: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    primary: Colors.blueAccent,
                    side: BorderSide(color: Colors.blueAccent),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
