import 'package:flutter/material.dart';
import 'package:flutter_codigo5_ui/pages/login1_page.dart';
import 'package:flutter_codigo5_ui/pages/login2_page.dart';
import 'package:flutter_codigo5_ui/pages/parking_page.dart';
import 'package:flutter_codigo5_ui/pages/sport_page.dart';
import 'package:google_fonts/google_fonts.dart';

class HousePage extends StatefulWidget {
  const HousePage({Key? key}) : super(key: key);

  @override
  State<HousePage> createState() => _HousePageState();
}

class _HousePageState extends State<HousePage> {
  int _paginaActual = 0;
  List<Widget> _pages = [
    HousePage(),
    Login1Page(),
    Login2Page(),
    ParkingPage(),
    ParkingPage(),
    SportPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9FBFC),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Color(0xffC1D6F4),
                              size: 14.0,
                            ),
                            Text(
                              "Location",
                              style: GoogleFonts.montserrat(
                                fontSize: 12.0,
                                color: Colors.black.withOpacity(0.45),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 4.0,
                        ),
                        Text(
                          "Purbalingga, Jawa Tengah",
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            // borderRadius: BorderRadius.circular(12.0)
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white, width: 0.5),
                          ),
                          // padding: EdgeInsets.all(8),
                          //color: Colors.red,
                          child: CircleAvatar(
                            backgroundColor: Colors.black87.withOpacity(0.02),
                            backgroundImage: NetworkImage(
                              "https://images.pexels.com/photos/1755385/pexels-photo-1755385.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  bottom: 2,
                                  right: -1.4,
                                  child: Container(
                                    height: 16,
                                    width: 16,
                                    decoration: BoxDecoration(
                                      color: Colors.greenAccent,
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: Colors.black54, width: 1.4),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 2,
                                  right: -1.6,
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.03),
                              offset: const Offset(4, 4),
                              blurRadius: 14.0),
                        ],
                      ),
                      child: Stack(
                        children: [
                          Icon(
                            Icons.notifications,
                            color: Colors.black.withOpacity(0.25),
                          ),
                          Positioned(
                            top: 2,
                            right: 2,
                            child: Container(
                              height: 9,
                              width: 9,
                              decoration: BoxDecoration(
                                color: Colors.redAccent,
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.white, width: 1.2),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.04),
                        blurRadius: 12,
                        offset: const Offset(4, 4),
                      ),
                    ],
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Search",
                      hintStyle: GoogleFonts.montserrat(
                          color: Colors.black.withOpacity(0.4)),
                      suffixIcon: Icon(
                        Icons.search,
                        color: Colors.black.withOpacity(0.4),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide.none,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Category",
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w600,
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(
                  height: 14.0,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  child: Row(
                    children: [
                      ItemMenuWidget(
                        text: "House",
                        // images: "home",
                      ),
                      ItemMenuWidget(
                        text: "Hotel",
                        //  images: "building",
                      ),
                      ItemMenuWidget(
                        text: "Apartment",
                        //  images: "skyscraper",
                      ),
                      ItemMenuWidget(
                        text: "House",
                        // images: "home",
                      ),
                      ItemMenuWidget(
                        text: "Hotel",
                        //  images: "building",
                      ),
                      ItemMenuWidget(
                        text: "Apartment",
                        //  images: "skyscraper",
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Recomendation",
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w600,
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(
                  height: 14.0,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  child: Row(
                    children: [
                      HouseDetailWidget(
                        text:
                            "Minimalist House Minimalist House Minimalist House Minimalist House",
                        start: "5.5",
                        price: "\$745",
                        image:
                            'https://images.pexels.com/photos/1438832/pexels-photo-1438832.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                        address: "Padamara, Jawa Tengah",
                      ),
                      HouseDetailWidget(
                        text: "Natural House",
                        start: "6.4",
                        price: "\$985",
                        image:
                            'https://images.pexels.com/photos/208736/pexels-photo-208736.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                        address: "Suiza, netherlans",
                      ),
                      HouseDetailWidget(
                        text: "Minimalist House",
                        start: "4.5",
                        price: "\$859",
                        image:
                            'https://images.pexels.com/photos/259685/pexels-photo-259685.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                        address: "Polonia, city",
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  "Recomendation",
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w600,
                    fontSize: 16.0,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                      horizontal: 6.0, vertical: 14.0),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12.0, vertical: 12.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.07),
                          blurRadius: 12,
                          offset: Offset(4, 4),
                        ),
                      ]),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 100.0,
                        height: 100.0,
                        /* padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: Color(0xffB8CBFF),
                          // shape: BoxShape.circle,
                        ), */
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(14.0),
                          child: Image.network(
                            'https://images.pexels.com/photos/259685/pexels-photo-259685.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                            width: 20.0,
                            height: 70.0,
                            fit: BoxFit.cover,
                          ),
                        ),

                        /* Image.network(
                            "https://images.pexels.com/photos/259685/pexels-photo-259685.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                        */ /* Icon(
                          Icons.volume_down_sharp,
                          color: Color(0xff386CFF),
                          size: 28.0,
                        ), */
                      ),
                      const SizedBox(
                        width: 14.0,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Padanaran House ",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w600,
                                fontSize: 13.0,
                              ),
                            ),
                            const SizedBox(
                              height: 25.0,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 14.0,
                                  color: Color(0xffFBBF12),
                                ),
                                Icon(
                                  Icons.star,
                                  size: 14.0,
                                  color: Color(0xffFBBF12),
                                ),
                                Icon(
                                  Icons.star,
                                  size: 14.0,
                                  color: Color(0xffFBBF12),
                                ),
                                Icon(
                                  Icons.star,
                                  size: 14.0,
                                  color: Color(0xffFBBF12),
                                ),
                                Icon(
                                  Icons.star_half,
                                  size: 14.0,
                                  color: Color(0xffFBBF12),
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                Text(
                                  "5.5",
                                  style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12.0,
                                    color: Color(0xffD6D8D9),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 25.0,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: Color(0xffABADB4),
                                  size: 14.0,
                                ),
                                Text(
                                  "Padamara, Jawa Tengah",
                                  style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 10.0,
                                    color: Color(0xffD6D8D9),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.amberAccent,
        onTap: (index) {
          setState(() {
            _paginaActual = index;
          });
        },
        currentIndex: _paginaActual,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: "Favorite"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: "Favorite"),
        ],
      ),
    );
  }
}

class HouseDetailWidget extends StatelessWidget {
  String text;
  String start;
  String price;
  String image;
  String address;

  HouseDetailWidget({
    required this.text,
    required this.start,
    required this.price,
    required this.image,
    required this.address,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      padding: const EdgeInsets.all(9.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            offset: const Offset(4, 4),
            blurRadius: 12.0,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(14.0),
            child: Image.network(
              image,
              //'https://images.pexels.com/photos/1438832/pexels-photo-1438832.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
              width: 200,
              height: 110,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  text,
                  //"Minimalist House sdsdsd asdsd",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w600,
                    fontSize: 13.0,
                  ),
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    size: 14.0,
                    color: Color(0xffFBBF12),
                  ),
                  Text(
                    start,
                    // "4.5",
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w600,
                      fontSize: 13.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 12.0,
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          price,
                          // "\$743",
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w600,
                            fontSize: 13.0,
                            color: Color(0xff349DFD),
                          ),
                        ),
                        Text(
                          "/Month",
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w500,
                            fontSize: 12.0,
                            color: Color(0xffD6D8D9),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Color(0xffABADB4),
                          size: 14.0,
                        ),
                        Expanded(
                          child: Text(
                            address,
                            //  "Padamara, Jawa Tengah",
                            style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w500,
                              fontSize: 10.0,
                              color: Color(0xffD6D8D9),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.bookmark_rounded,
                color: Color(0xff89909A),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ItemMenuWidget extends StatelessWidget {
  String text;
  // String images;
  ItemMenuWidget({
    required this.text,
    //  required this.images,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12.0,
        vertical: 10,
      ),
      margin: const EdgeInsets.only(right: 14.0),
      decoration: BoxDecoration(
        color: Color(0xffEFF4FD),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        children: [
          Image.asset(
            'assets/images/racing.png',
            height: 22.0,
          ),
          const SizedBox(
            width: 8.0,
          ),
          Text(
            text,
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
