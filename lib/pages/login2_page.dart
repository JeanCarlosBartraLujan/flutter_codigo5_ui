import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class Login2Page extends StatefulWidget {
  const Login2Page({Key? key}) : super(key: key);

  @override
  State<Login2Page> createState() => _Login2PageState();
}

class _Login2PageState extends State<Login2Page> {
  bool isInvisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFBF5FF),
      body: Stack(
        children: [
          Positioned(
            top: -150,
            right: -150,
            child: MyCircleWidget(
              radio: 200.0,
              colors: [
                Color(0xffD74286),
                Color(0xffE991B9),
              ],
            ),
          ),
          Positioned(
            bottom: -150,
            left: -100,
            child: MyCircleWidget(
              radio: 140.0,
              colors: [
                Color(0xff4E398B),
                Color(0xff9C89D9),
              ],
            ),
          ),
          Positioned(
            top: 80,
            left: 30,
            child: MyCircleWidget(
              radio: 20.0,
              colors: [
                Color(0xffD74286),
                Color(0xffE991B9),
              ],
            ),
          ),
          Positioned(
            top: 87,
            left: 37,
            child: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            ),
          ),
          Positioned(
            bottom: 300,
            right: 30,
            child: MyCircleWidget(
              radio: 17.0,
              colors: [
                Color(0xff4E398B),
                Color(0xff9C89D9),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 100,
              ),
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 80,
                  ),
                  Text(
                    "Create Your Account!",
                    style: GoogleFonts.poppins(
                      color: Color(0xff54387E),
                      fontSize: 50,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  /*  TextField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 16.0),
                        hintText: "Password",
                        hintStyle: GoogleFonts.poppins(
                          color: Colors.green,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                        ),
                        filled: true,
                        fillColor: Colors.white60,
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(14.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(14.0)),
                      ),
                    ), */
                  TextField(
                    textAlign: TextAlign.start,
                    cursorColor: Colors.deepPurpleAccent,
                    style: const TextStyle(
                      color: Colors.deepPurpleAccent,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                    decoration: InputDecoration(
                      label: const Text("Email Address"),
                      labelStyle: TextStyle(
                        color: Color(0xffD7CDE4),
                      ),
                      hintText: "Ingresa tu correo electrónico",
                      hintStyle: TextStyle(
                          color: Color(0xffD7CDE4),
                          fontWeight: FontWeight.w400,
                          fontSize: 16.0),
                      prefixIcon: Icon(Icons.email),
                      // suffixIcon: Icon(Icons.email_outlined),
                    ),
                    onChanged: (String value) {
                      print(value);
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    obscureText: isInvisible,
                    decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle: TextStyle(
                        color: Color(0xffD7CDE4),
                      ),
                      prefixIcon: Icon(Icons.enhanced_encryption),
                      suffixIcon: IconButton(
                        icon: isInvisible
                            ? Icon(Icons.remove_red_eye)
                            : Icon(
                                Icons.remove_red_eye_outlined,
                              ),
                        onPressed: () {
                          isInvisible = !isInvisible;
                          setState(() {});
                        },
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 70.0,
                  ),

                  Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      gradient: LinearGradient(colors: [
                        Color(0xffCF82A7),
                        Color(0xffD94A8B),
                      ]),
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        print('Gradient Material button');
                      },
                      splashColor: Colors.transparent,
                      child: Text(
                        'Create Account',
                        style:
                            TextStyle(fontSize: 16, color: Color(0xffF5CDDF)),
                      ),
                    ),
                  )

                  //mmmmmmmmmmm
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyCircleWidget extends StatelessWidget {
  double radio;
  List<Color> colors;
  MyCircleWidget({required this.radio, required this.colors});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: radio * 2,
      width: radio * 2,
      decoration: BoxDecoration(
        color: Colors.pinkAccent,
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
          colors: colors,
        ),
        boxShadow: [
          BoxShadow(
            color: colors[0].withOpacity(0.7),
            blurRadius: 12,
            offset: const Offset(2, 2),
          ),
        ],
      ),
    );
  }
}
