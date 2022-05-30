import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_codigo5_ui/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Login1Page extends StatelessWidget {
  const Login1Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColorPrimaryLogin,
      body: Stack(
        children: [
          Stack(
            children: [
              Positioned(
                left: 40,
                top: -40,
                child: Transform.rotate(
                  angle: -pi / 3,
                  child: Container(
                    width: 200,
                    height: 60,
                    decoration: BoxDecoration(
                      color: kColorSecondaryLogin,
                      borderRadius: BorderRadius.circular(13.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 14.0, vertical: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /*  Icon(
                    Icons.home,
                    color: Colors.white,
                  ), */
                    SizedBox(
                      width: 80.0,
                      height: 100.0,
                    ),
                    Container(
                      padding: const EdgeInsets.all(18.8),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: kColorSecondaryLogin.withOpacity(0.15)),
                      child: SvgPicture.asset(
                        'assets/icons/bx-home-alt.svg',
                        color: kColorSecondaryLogin,
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    /*  SvgPicture.asset(
                    'assets/icons/bxl-facebook.svg',
                    color: Colors.white,
                  ), */
                    Text(
                      "Let's log you in",
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      "Welcome back Yo've been missed",
                      style: GoogleFonts.poppins(
                        color: Colors.white38,
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton.icon(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xffEA4335),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            icon: SvgPicture.asset(
                              'assets/icons/bxl-google.svg',
                              color: Colors.white,
                              height: 17.0,
                            ),
                            label: Container(
                              margin:
                                  const EdgeInsets.symmetric(vertical: 14.0),
                              child: Text(
                                "Google",
                                style: GoogleFonts.poppins(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 18.0,
                        ),
                        Expanded(
                          child: ElevatedButton.icon(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xff1877F2),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            icon: SvgPicture.asset(
                              'assets/icons/bxl-facebook.svg',
                              color: Colors.white,
                              height: 17.0,
                            ),
                            label: Container(
                              margin:
                                  const EdgeInsets.symmetric(vertical: 14.0),
                              child: Text(
                                "Facebook",
                                style: GoogleFonts.poppins(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: kColorTertiaryLogin,
                        label: Text(
                          "Username",
                          style: TextStyle(color: Color(0xff7B7D88)),
                        ),
                        hintText: "Ingresa el producto a buscar...",
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 2.0,
                            color: Color(0xff25283A),
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 2.0,
                            color: Colors.deepPurpleAccent,
                          ),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: kColorTertiaryLogin,
                        label: Text(
                          "Email Address",
                          style: TextStyle(
                              color: Color(0xff7B7D88),
                              fontWeight: FontWeight.w500),
                        ),
                        hintText: "Ingresa el producto a buscar...",
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 2.0,
                            color: Color(0xff25283A),
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 2.0,
                            color: Colors.deepPurpleAccent,
                          ),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: kColorTertiaryLogin,
                        label: Text(
                          "Password",
                          style: TextStyle(color: Color(0xff7B7D88)),
                        ),
                        hintText: "Ingresa el producto a buscar...",
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 2.0,
                            color: Color(0xff25283A),
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 2.0,
                            color: Colors.deepPurpleAccent,
                          ),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                    Container(
                      width: double.infinity,
                      height: 54.0,
                      child: Expanded(
                        child: ElevatedButton.icon(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xff00B761),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          icon: SvgPicture.asset(
                            'assets/icons/bxl-facebook.svg',
                            color: Color(0xff00B761),
                            height: 15.0,
                          ),
                          label: Container(
                            margin: const EdgeInsets.symmetric(vertical: 14.0),
                            child: Text(
                              "Sign Up",
                              style: GoogleFonts.poppins(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't Have an account",
                          style: TextStyle(color: Color(0xff4D4C57)),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Text(
                          "Sign In",
                          style: TextStyle(color: Color(0xff19639E)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
