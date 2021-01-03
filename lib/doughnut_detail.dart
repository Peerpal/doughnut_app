import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:doughnut/extensions.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:line_icons/line_icons.dart';

class DoughnutDetail extends StatefulWidget {
  final int position;
  DoughnutDetail({this.position});

  @override
  _DoughnutDetailState createState() => _DoughnutDetailState();
}

class _DoughnutDetailState extends State<DoughnutDetail> {
  int intialItem;
  @override
  void initState() {
    super.initState();
    intialItem = widget.position;
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      backgroundColor: HexColor("#DFE7E9"),
      body: Container(
        width: context.screenWidth(),
        height: context.screenHeight(),
        // padding: EdgeInsets.only(bottom: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SpaceY(15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(LineIcons.arrow_left),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    IconButton(icon: Icon(LineIcons.heart_o), onPressed: null),
                  ],
                ),
              ),
              CarouselSlider(
                items: doughnutList.asMap().entries.map((e) {
                  return Container(
                    // width: context.screenWidth(),
                    // height: context.screenWidth(.2),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(e.value["main-image"]),
                        fit: BoxFit.contain,
                      ),
                    ),
                  );
                }).toList(),
                options: CarouselOptions(
                  initialPage: intialItem,
                  aspectRatio: 1.6,
                  enlargeCenterPage: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.height,
                  enableInfiniteScroll: true,
                  disableCenter: true,
                  onPageChanged: (index, reason) =>
                      setState(() => intialItem = index),
                ),
              ),
              SpaceY(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "3.8",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SpaceX(5),
                  Icon(
                    Icons.star,
                    color: HexColor("F5CF37"),
                  ),
                  // SpaceX(5),
                  Text(
                    "(114 reviews)",
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  )
                ],
              ),
              SpaceY(15),
              Column(
                children: [
                  Text(
                    doughnutList[intialItem]["name"],
                    style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    doughnutList[intialItem]["tagline"],
                    style: TextStyle(
                      fontSize: 18,
                      // fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              SpaceY(15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Calories",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                        SpaceY(15),
                        Container(
                          width: 63,
                          height: 52,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 255, 255, 0.3),
                              borderRadius: BorderRadius.circular(18)),
                          child: Center(
                            child: Text(doughnutList[intialItem]["calories"]),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Fat",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                        SpaceY(15),
                        Container(
                          width: 63,
                          height: 52,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 255, 255, 0.3),
                              borderRadius: BorderRadius.circular(18)),
                          child: Center(
                            child: Text(doughnutList[intialItem]["fat"]),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Salt",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                        SpaceY(15),
                        Container(
                          width: 63,
                          height: 52,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 255, 255, 0.3),
                              borderRadius: BorderRadius.circular(18)),
                          child: Center(
                            child: Text(doughnutList[intialItem]["salt"]),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Sugars",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                        SpaceY(15),
                        Container(
                          width: 63,
                          height: 52,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 255, 255, 0.3),
                              borderRadius: BorderRadius.circular(18)),
                          child: Center(
                            child: Text(doughnutList[intialItem]["sugar"]),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SpaceY(10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    width: context.screenWidth(),
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Ingredients"),
                        RotatedBox(
                          quarterTurns: 1,
                          child: Icon(
                            Icons.arrow_forward_ios,
                            size: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SpaceY(10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    width: context.screenWidth(),
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Reviews (114)"),
                        RotatedBox(
                          quarterTurns: 1,
                          child: Icon(
                            Icons.arrow_forward_ios,
                            size: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // SpaceY(10),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "\$" + doughnutList[intialItem]["price"],
                          style: TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SpaceY(5),
                        Text(
                          "price",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 172,
                        height: 53,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: HexColor("F799B1"),
                        ),
                        child: Center(
                          child: Text(
                            "Add to cart",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
