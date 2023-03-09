import 'dart:ui';

import 'package:dcftrust/controllers/headercontroller.dart';
import 'package:dcftrust/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeLarge extends StatelessWidget {
  HomeLarge({super.key});

  final HeaderController headerController = Get.find();

  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      // endDrawer: EndDrawer(headerController: headerController),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100.0),
        child: Header(
          key1: _key,
          headerController: headerController,
          cont: context,
        ),
      ),
      body: ListView(
        children: [
          const Section1(),
          const Section2(),
          const Section3(),
          const Section4(),
          Container(
            height: 500,
          ),
        ],
      ),
    );
  }
}

class Section4 extends StatelessWidget {
  const Section4({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      decoration: const BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
              image: AssetImage("assets/vision.jpg"),
              opacity: 0.6,
              filterQuality: FilterQuality.high,
              fit: BoxFit.cover)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
                color: Colors.green.withOpacity(0.6),
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 20,
                      color: Colors.transparent)
                ]),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Vision',
                    style: GoogleFonts.lato(
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    'The Vision of “DIVINE CHARITABLE FOUNDATION TRUST” is “To be the most trustworthy public charitable organization.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        shadows: [
                          BoxShadow(
                              offset: const Offset(0, 10),
                              blurRadius: 20,
                              color: Colors.grey.shade300)
                        ],
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 50,
          ),
          Container(
            height: 350,
            width: 350,
            decoration: BoxDecoration(
                color: Colors.purple.withOpacity(0.6),
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 20,
                      color: Colors.transparent)
                ]),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Mission',
                    style: GoogleFonts.lato(
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    'The Mission of “DIVINE CHARITABLE FOUNDATION TRUST” is “to achieve our vision by contributing to: (a) Education Support for Schools/Colleges, Fashion Designing/Tailoring/Computer Training/Skill Training centers (b) Elderly & orphan support (c) Destitute support (d) Animal welfare, and (e) Environment care”.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        shadows: [
                          BoxShadow(
                              offset: const Offset(0, 10),
                              blurRadius: 20,
                              color: Colors.grey.shade300)
                        ],
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 50,
          ),
          Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
                color: Colors.orangeAccent.withOpacity(0.6),
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 20,
                      color: Colors.transparent)
                ]),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Value',
                    style: GoogleFonts.lato(
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    'The Values of “DIVINE CHARITABLE FOUNDATION TRUST” are “to conduct our orga nizational mission with: (a) Nationalistic Patriotism, and (b) Personal. Integrity.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        shadows: [
                          BoxShadow(
                              offset: const Offset(0, 10),
                              blurRadius: 20,
                              color: Colors.grey.shade300),
                        ],
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      decoration: const BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
            image: AssetImage('assets/bg-white-01.jpg'), fit: BoxFit.cover),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              Container(
                height: 400,
                width: 500,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                        image: AssetImage('purpose/4.jpg'), fit: BoxFit.cover)),
              ),
            ],
          ),
          const SizedBox(
            width: 100,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'PURPOSE OF',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                    color: Colors.black87),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'DIVINE CHARITABLE FOUNDATION TRUST',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                    color: Colors.black87),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 450,
                child: Text(
                  'This Trust is a Non-Religious, Non-Political, Non-Profit, Charitable Trust to initiate, establish, promote, operate, and/ or sustain social-welfare activities, including but not limited to: (1) Education & Culture Development; (2) Economic & Entrepreneurship Development; (3) Environment & Wildlife Sustainability; (4) Agriculture & Farmers Development; (5) Medical & Healthcare Development; (6) Food & Nutrition Security; (7) Welfare of Children, Women & the Elderly; (8) Upliftment of Economically Weaker Sections & the Socially Disadvantaged; (9) Relief of Physically & Mentally Disabled Persons; and (10) Relief of Other Needy Peoples of the Society.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                      color: Colors.black87),
                ),
              ),
            ],
          )
              .animate(delay: 1000.ms)
              .fadeIn()
              .scale(alignment: Alignment.centerRight)
        ],
      ),
    );
  }
}

class Section2 extends StatelessWidget {
  const Section2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: Stack(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: Stack(
                  children: [
                    Container(
                      height: 200,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/bg-white-01.jpg'),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.green.withOpacity(0.6),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text.rich(
                            TextSpan(
                                text: 'THANK TO THE ',
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal),
                                children: <InlineSpan>[
                                  TextSpan(
                                      text: 'RESULTS',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          decoration: TextDecoration.underline,
                                          color: Colors.white,
                                          fontSize: 25))
                                ]),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text.rich(
                            TextSpan(
                              text: 'ACHIEVED WITH YOU !',
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                children: const [
                                  Text(
                                    '6893',
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.w900,
                                        color: Colors.white),
                                  ),
                                  Text('HELPED PEOPLE',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.white)),
                                ],
                              ),
                              Column(
                                children: const [
                                  Text(
                                    '1200',
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.w900,
                                        color: Colors.white),
                                  ),
                                  Text('VOLOUNTEERS',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.white))
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Stack(
                  children: [
                    Container(
                      height: 250,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/bg-white-02.jpg'),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      height: 250,
                      width: MediaQuery.of(context).size.width / 3,
                      decoration: BoxDecoration(
                        color: Colors.purple.withOpacity(0.6),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          SizedBox(
                            height: 30,
                          ),
                          Text.rich(TextSpan(
                            text: 'NEXT GOALS',
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.normal),
                          )),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Stack(
                  children: [
                    Container(
                      height: 200,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/bg-white-01.jpg'),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width / 3,
                      color: Colors.orangeAccent.withOpacity(0.6),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'HELP US',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                letterSpacing: 2,
                                fontWeight: FontWeight.normal),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text(
                            'NEXT GOALS',
                            style: TextStyle(
                                color: Colors.white,
                                letterSpacing: 2,
                                fontSize: 30,
                                fontWeight: FontWeight.w900),
                          ).animate().slide(duration: 1000.ms, delay: 200.ms),
                          const SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.black87),
                            ),
                            child: const Text(
                              'CHECK IT',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class Section1 extends StatelessWidget {
  const Section1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      decoration: const BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
            image: AssetImage(
              'assets/grey-bg.jpg',
            ),
            fit: BoxFit.cover,
            opacity: 1,
            filterQuality: FilterQuality.high),
      ),
      child: Stack(
        children: [
          Center(
            child: Container(
              height: 500,
              width: 1000,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                      image: AssetImage(
                        'assets/hand_color.jpg',
                      ),
                      fit: BoxFit.cover,
                      opacity: 0.8,
                      filterQuality: FilterQuality.high),
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 10),
                        color: Colors.grey.shade200,
                        spreadRadius: 25)
                  ]),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
                    child: Container(
                      decoration:
                          BoxDecoration(color: Colors.white.withOpacity(0.0)),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Facilitate\nand\nFeasible',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.lato(
                            fontSize: 40,
                            fontWeight: FontWeight.w900,
                            color: Colors.white),
                      )
                          .animate()
                          .fade(
                              delay: 1000.ms,
                              curve: Curves.easeIn,
                              duration: 1000.ms)
                          .slide(duration: 1000.ms, delay: 200.ms),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    side:
                                        const BorderSide(color: Colors.red)))),
                        child: const Text(
                          'Check Our Causes',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ).animate().fadeIn(
                            curve: Curves.bounceIn,
                            delay: 300.ms,
                            duration: 1000.ms,
                          )
                    ],
                  ),
                ],
              ),
            ).animate().fade(),
          ),
        ],
      ),
    );
  }
}
