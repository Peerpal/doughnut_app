import 'package:doughnut/doughnut_detail.dart';
import 'package:doughnut/extensions.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class DoughnutListing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      backgroundColor: HexColor("#DFE7E9"),
      body: Container(
        width: context.screenWidth(),
        height: context.screenHeight(),
        child: Column(
          children: [
            SpaceY(30),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("assets/menu.png"),
                  Stack(
                    overflow: Overflow.visible,
                    children: [
                      Image.asset("assets/bag.png"),
                      Positioned(
                        left: 14,
                        top: 17,
                        child: Container(
                          width: 17,
                          height: 17,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: HexColor("#F799B1"),
                          ),
                          child: Center(
                            child: Text(
                              "2",
                              style: TextStyle(
                                color: Colors.white,
                                // fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            SpaceY(25),
            Text(
              "We Offer Happiness \n In Circles",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),
            SpaceY(25),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: context.screenWidth(.8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(LineAwesomeIcons.search),
                        border: InputBorder.none,
                        hintText: "Search for doughnut",
                      ),
                    ),
                  ),
                  Container(
                    width: 44,
                    height: 44,
                    decoration: BoxDecoration(
                      color: HexColor("#F799B1"),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Center(
                      child: Image.asset(
                        "assets/filter.png",
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SpaceY(25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: _buildCategorySelection(context),
            ),
            SpaceY(25),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 0.72,
                padding: EdgeInsets.symmetric(horizontal: 15),
                children: _buildDoughnutList(context),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildCategorySelection(BuildContext context) {
    return Container(
      width: context.screenWidth(),
      height: 30,
      margin: EdgeInsets.symmetric(horizontal: 15),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          InkWell(
            child: Container(
              width: 44,
              height: 27,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Text(
                  "All",
                  style: TextStyle(
                    color: HexColor("#F799B1"),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          SpaceX(20),
          InkWell(
            child: Container(
              decoration: BoxDecoration(
                  // color: Colors.white,
                  // borderRadius: BorderRadius.circular(5),
                  ),
              child: Center(
                child: Text(
                  "Basic",
                  style: TextStyle(
                    // color: HexColor("#F799B1"),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          SpaceX(20),
          InkWell(
            child: Container(
              decoration: BoxDecoration(
                  // color: Colors.white,
                  // borderRadius: BorderRadius.circular(5),
                  ),
              child: Center(
                child: Text(
                  "Frosted",
                  style: TextStyle(
                    // color: HexColor("#F799B1"),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          SpaceX(20),
          InkWell(
            child: Container(
              decoration: BoxDecoration(
                  // color: Colors.white,
                  // borderRadius: BorderRadius.circular(5),
                  ),
              child: Center(
                child: Text(
                  "Crea-filled",
                  style: TextStyle(
                    // color: HexColor("#F799B1"),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          SpaceX(20),
          InkWell(
            child: Container(
              decoration: BoxDecoration(
                  // color: Colors.white,
                  // borderRadius: BorderRadius.circular(5),
                  ),
              child: Center(
                child: Text(
                  "Cruller",
                  style: TextStyle(
                    // color: HexColor("#F799B1"),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          SpaceX(20),
          InkWell(
            child: Container(
              decoration: BoxDecoration(
                  // color: Colors.white,
                  // borderRadius: BorderRadius.circular(5),
                  ),
              child: Center(
                child: Text(
                  "Minted",
                  style: TextStyle(
                    // color: HexColor("#F799B1"),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          SpaceX(20),
        ],
      ),
    );
  }

  List<Widget> _buildDoughnutList(BuildContext context) {
    return doughnutList.asMap().entries.map((e) {
      return InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DoughnutDetail(position: e.key),
            ),
          );
        },
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
              color: Color.fromRGBO(255, 255, 255, 0.3),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Stack(
              overflow: Overflow.visible,
              children: [
                Column(
                  children: [
                    Center(
                      child: Image.asset(
                        e.value["image"],
                        width: 138,
                        height: 109,
                      ),
                    ),
                    SpaceY(10),
                    Text(
                      e.value["name"],
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(e.value["tagline"]),
                    SpaceY(15),
                    Text("\$" + e.value["price"]),
                  ],
                ),
                Positioned(
                    width: 150,
                    bottom: 10,
                    right: 8,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          LineAwesomeIcons.heart,
                          color: HexColor("#F799B1"),
                          size: 20,
                        ),
                        Container(
                          width: 32,
                          height: 32,
                          decoration: BoxDecoration(
                            color: HexColor("#F799B1"),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Center(
                            child: Image.asset(
                              "assets/bagadd.png",
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    )),
              ],
            )),
      );
    }).toList();
  }
}
