// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_plane/ui/widgets/custom_button.dart';
import 'package:flutter_plane/ui/widgets/custom_text_form_field.dart';
import '../../shared/theme.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: Text(
          'Join us and get \nyour next journey',
          style: blackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget inputSection() {
      // FullName
      Widget nameInput() {
        return CustomTextFormField(
          hintText: 'Your full name',
          title: 'Full Name',
        );
      }

      // emailInput
      Widget emailInput() {
        return CustomTextFormField(
          hintText: 'Your email address',
          title: 'Email Address',
        );
      }

// passwordInput
      Widget passwordInput() {
        return CustomTextFormField(
          hintText: 'Your password',
          title: 'Password',
          obscureText: true,
        );
      }

// hobbyInput
      Widget hobbyInput() {
        return CustomTextFormField(
          hintText: 'Your hobby',
          title: 'Hobby',
        );
      }

      // getSatrted Button
      Widget submitButton() {
        return CustomButton(
            title: 'Get Started',
            onPressed: () {
              Navigator.pushNamed(context, '/bonus');
            });
      }

      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 30,
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(
            defaultRadius,
          ),
        ),
        child: Column(
          children: [
            nameInput(),
            emailInput(),
            passwordInput(),
            hobbyInput(),
            submitButton(),
          ],
        ),
      );
    }

    // CTA
    Widget tacButton() {
      return Container(
        margin: EdgeInsets.only(top: 50, bottom: 73),
        child: Text(
          'Terms and Conditions',
          style: greyTextStyle.copyWith(
            fontSize: 16,
            fontWeight: light,
            decoration: TextDecoration.underline,
          ),
          textAlign: TextAlign.center,
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [
            title(),
            inputSection(),
            tacButton(),
          ],
        ),
      ),
    );
  }
}
