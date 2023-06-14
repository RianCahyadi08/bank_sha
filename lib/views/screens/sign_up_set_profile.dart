import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/views/widgets/buttons.dart';
import 'package:bank_sha/views/widgets/forms.dart';
import 'package:flutter/material.dart';

class SignUpSetProfile extends StatelessWidget {
  const SignUpSetProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 100),
            width: 155,
            height: 50,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/img_logo_white.png'))),
          ),
          Text(
            'Join Us to Unlock\nYour Growth',
            style: blackTextStyle.copyWith(fontSize: 20, fontWeight: semiBold),
          ),
          SizedBox(
            height: 52,
          ),
          Container(
            padding: EdgeInsets.all(22),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: whiteColor),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Container(
                //   width: 120,
                //   height: 120,
                //   decoration: BoxDecoration(
                //     shape: BoxShape.circle,
                //     color: Color(0xffF1F1F9),
                //   ),
                //   child: Center(
                //     child: Image.asset(
                //       'assets/images/ic_upload.png',
                //       width: 32,
                //       height: 32,
                //     ),
                //   ),
                // ),
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/img_profile.png'))),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'Shayna Hanna',
                  style:
                      blackTextStyle.copyWith(fontSize: 18, fontWeight: medium),
                ),
                SizedBox(
                  height: 30,
                ),
                CustomFormField(
                  title: 'Set Pin (6 digit number)',
                  obscureText: true,
                ),
                SizedBox(
                  height: 30,
                ),
                CustomFilledButton(
                  title: 'Continue',
                  onPressed: () {
                    Navigator.pushNamed(context, '/sign-up-upload-card');
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
