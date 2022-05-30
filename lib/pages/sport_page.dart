import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SportPage extends StatelessWidget {
  const SportPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.menu),
                    Icon(Icons.notifications_none),
                  ],
                ),
                SizedBox(
                  height: 24.0,
                ),
                Text(
                  "Hello Manuel",
                  style: GoogleFonts.poppins(),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Welcome Back!!",
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 22.0,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Container(
                    width: double.infinity,
                    height: 240,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://images.pexels.com/photos/248547/pexels-photo-248547.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"

                            //"https://images.pexels.com/photos/260409/pexels-photo-260409.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
                            // "https://images.pexels.com/photos/949126/pexels-photo-949126.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                            ),
                        //Image.asset('assets/images/sport.jpg'),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: [
                                  Colors.black.withOpacity(0.8),
                                  Colors.transparent,
                                ]),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "Mulai beronlahraga dan mencari teman bersama",
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                ),
                              ),
                              ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      primary: Color(0xffFE006F),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      )),
                                  child: Text("Regitsrate Ahora"))
                            ],
                          ),
                        ), //Text("Mulai beronlahraga dan mencari teman bersama"),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Categorías",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w700,
                        fontSize: 17.0,
                      ),
                    ),
                    Text(
                      "Ver más",
                      style: GoogleFonts.poppins(
                          fontSize: 12.0,
                          color: Colors.amber,
                          decoration: TextDecoration.underline),
                    ),
                  ],
                ),
                GridView.count(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  childAspectRatio: 2.5,
                  children: [
                    ItemGridWidget(
                      text: "Swimming",
                      image: "swimming",
                    ),
                    ItemGridWidget(
                      text: "Basketball",
                      image: "basketball",
                    ),
                    ItemGridWidget(
                      text: "Fooball",
                      image: "football",
                    ),
                    ItemGridWidget(
                      text: "Boxing",
                      image: "boxing",
                    ),
                    ItemGridWidget(
                      text: "Swimming",
                      image: "swimming",
                    ),
                    ItemGridWidget(
                      text: "Basketball",
                      image: "basketball",
                    ),
                    ItemGridWidget(
                      text: "Fooball",
                      image: "football",
                    ),
                    ItemGridWidget(
                      text: "Boxing",
                      image: "boxing",
                    ),
                  ],
                ),
                const SizedBox(
                  height: 100,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ItemGridWidget extends StatelessWidget {
  String text;
  String image;
  ItemGridWidget({
    required this.text,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12.0,
        vertical: 12.0,
      ),
      margin: const EdgeInsets.symmetric(
        horizontal: 6.0,
        vertical: 6,
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.04),
              blurRadius: 10,
              offset: const Offset(4, 4),
            ),
          ]),
      child: Row(
        children: [
          Image.asset(
            'assets/images/$image.png',
          ),
          const SizedBox(
            width: 10.0,
          ),
          Text(
            text,
            // "Swimming",
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500, fontSize: 13.0),
          ),
        ],
      ),
    );
  }
}
