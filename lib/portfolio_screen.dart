import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio_flutter_web/about_screen.dart';
import 'package:portfolio_flutter_web/animated_gradient_button.dart';
import 'package:portfolio_flutter_web/blog_screen.dart';
import 'package:portfolio_flutter_web/custom_bottom_web.dart';
import 'package:portfolio_flutter_web/work_screen.dart';
import 'package:rxdart/rxdart.dart';
import 'package:url_launcher/url_launcher.dart';

import 'contact_screen.dart';
import 'custom_app_bar.dart';

class PortfolioScreen extends StatefulWidget {
  const PortfolioScreen({Key? key}) : super(key: key);

  @override
  _PortfolioScreenState createState() => _PortfolioScreenState();
}

class _PortfolioScreenState extends State<PortfolioScreen> {
  final contactKey = GlobalKey();
  final workKey = GlobalKey();
  final blogKey = GlobalKey();
  final aboutKey = GlobalKey();
  bool linkHover = false;
  bool gitHover = false;
  final ReplaySubject<bool> showReset = ReplaySubject<bool>();

  Stream<bool> get showResetStream => showReset.stream;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF000000), Color(0xFF1B0600)],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        extendBodyBehindAppBar: true,
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(100),
            child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: CustomAppBar(callBack: scrollToWidget))),
        body: Stack(
          children: [
            StreamBuilder<bool>(
                stream: showResetStream,
                builder: (context, snapshot) {
                  return SingleChildScrollView(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height:
                            (snapshot.data != null && snapshot.data == true)
                                ? MediaQuery.of(context).size.height / 5
                                : MediaQuery.of(context).size.height / 3,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                                height: 670,
                                width: MediaQuery.of(context).size.width / 1.5,
                                child: heroSection()),
                          ),
                          // const SizedBox(
                          //   height: 60,
                          // ),
                          // Container(key: aboutKey, child: const AboutScreen()),
                          // Container(
                          //   color: const Color(0xFFD9D9D9).withOpacity(0.05),
                          //   height: 40,
                          // ),
                          // Container(key: workKey, child: const WorkScreen()),
                          // const SizedBox(
                          //   height: 40,
                          // ),
                          // Container(key: blogKey, child: const BlogScreen()),
                          // Container(
                          //   color: const Color(0xFF1B0600),
                          //   height: 40,
                          // ),
                          // Container(key: contactKey, child: const ContactScreen()),
                          // Container(
                          //   color: const Color(0xFF000000),
                          //   height: 80,
                          // ),
                        ]),
                  );
                }),
            Positioned(
              top: MediaQuery.of(context).size.height / 2.5,
              left: MediaQuery.of(context).size.width / 14,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  MouseRegion(
                    onEnter: (_) {
                      setState(() {
                        linkHover = true;
                      });
                    },
                    onExit: (_) {
                      setState(() {
                        linkHover = false;
                      });
                    },
                    cursor: SystemMouseCursors.click,
                    child: InkWell(
                      hoverColor: Colors.transparent,
                      onTap: () {
                        _linkedin();
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40)),
                          height: 35,
                          width: 35,
                          child: Image.asset(
                            'asset/linkedin.png',
                            height: 35,
                            width: 35,
                            color: linkHover ? const Color(0xFF0077B5) : Colors.white,
                          )),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: InkWell(
                      onTap: () {
                        _github();
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40)),
                          height: 35,
                          width: 35,
                          child: Image.asset(
                            'asset/github.png',
                            height: 35,
                            width: 35,
                          )),
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height / 4,
              right: MediaQuery.of(context).size.width / 14,
              child: SizedBox(
                width: 20,
                // color: Colors.purple,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      color: const Color(0xFFFFFFFF).withOpacity(0.2),
                      height: 100,
                      width: 6,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Tooltip(
                      message: 'Click to copy',
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(18)),
                      preferBelow: false,
                      textStyle: const TextStyle(
                          height: 1.5,
                          color: Colors.white,
                          fontFamily: 'Podkova',
                          fontSize: 12),
                      triggerMode: TooltipTriggerMode.tap,
                      child: InkWell(
                        splashColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        onTap: () {
                          Clipboard.setData(const ClipboardData(
                              text: 'tripathii.bhavya@gmail.com'));
                          //     .then((value) {
                          //   showSnackBar('Copied');
                          // });
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width / 6.3,
                          child: Align(
                            alignment: Alignment.center,
                            child: RotatedBox(
                              quarterTurns: 1,
                              child: RichText(
                                text: TextSpan(
                                    text: 'tripathii.bhavya@gmail.com',
                                    style: TextStyle(
                                        fontFamily: 'FuturaMedium',
                                        letterSpacing: 2,
                                        color: const Color(0xFFFFFFFF)
                                            .withOpacity(0.5))),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      color: const Color(0xFFFFFFFF).withOpacity(0.2),
                      height: 100,
                      width: 6,
                    ),
                  ],
                ),
              ),
            ),
            StreamBuilder<bool>(
                stream: showResetStream,
                builder: (context, snapshot) {
                  return Visibility(
                    visible: snapshot.data ?? false,
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child: CustomBottomWeb(callBack: scrollToWidget)),
                  );
                })
          ],
        ),
      ),
    );
  }

  void showSnackBar(String text) {
    final snackBar = SnackBar(
      content: Text(
        text,
        style: GoogleFonts.zillaSlab(color: Colors.white, fontSize: 18),
      ),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          )),
      backgroundColor: const Color(0xFFFF3D00),
    );
    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(snackBar);
  }

  _linkedin() async {
    const url = 'https://www.linkedin.com/in/bhavya-tripathi/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _github() async {
    const url = 'https://github.com/BhavyaTripathi';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  scrollToWidget(String header) {
    var con;
    switch (header) {
      case "About":
        con = "/about";
        break;
      case "Blog":
        con = "/blog";
        break;
      case "Work":
        con = "/work";
        break;
      case "Contact":
        con = "/contact";
        break;
    }
    scrollToItem(con);
  }

  Widget heroSection() {
    return LayoutBuilder(
        builder: (BuildContext ctx, BoxConstraints constraints) {
          if (constraints.maxWidth >= 500) {
            showReset.sink.add(false);
            return Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text("Hey, ",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 50,
                                    fontFamily: 'FuturaMedium')),
                            Lottie.asset('asset/wave.json', height: 40, width: 40),
                          ],
                        ),
                      ),
                      const Flexible(
                        child: Text("I'm Bhavya",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 50,
                                fontFamily: 'FuturaMedium')),
                      ),
                      const SizedBox(height: 20),
                      animatedTextWidget(),
                      RichText(
                        text: TextSpan(
                          style: GoogleFonts.zillaSlab(
                              color: const Color(0xFFB994A8), fontSize: 24, height: 1.5),
                          children: <TextSpan>[
                            // TextSpan(text: 'Flutter dev,', style: GoogleFonts.zillaSlab(color: Color(0xFFB994A8), fontSize: 24, fontWeight: FontWeight.bold)),
                            TextSpan(
                                text:
                                'loves building custom solutions that deliver',
                                style: GoogleFonts.zillaSlab(
                                    color: const Color(0xFFB994A8), fontSize: 24)),
                            TextSpan(
                                text: ' exceptional user experiences',
                                style: GoogleFonts.zillaSlab(
                                    color: const Color(0xFFB994A8),
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold)),
                            TextSpan(
                                text: ' for ',
                                style: GoogleFonts.zillaSlab(
                                    color: const Color(0xFFB994A8), fontSize: 24)),
                            TextSpan(
                                text: 'android',
                                style: GoogleFonts.zillaSlabHighlight(
                                    color: const Color(0xFFB994A8), fontSize: 24)),
                            TextSpan(
                                text: ' & ',
                                style: GoogleFonts.zillaSlab(
                                    color: const Color(0xFFB994A8), fontSize: 24)),
                            TextSpan(
                                text: 'ios.',
                                style: GoogleFonts.zillaSlabHighlight(
                                    color: const Color(0xFFB994A8), fontSize: 24)),
                          ],
                        ),
                      ),
                      const SizedBox(height: 40),
                      Flexible(
                        child: AnimatedGradientButton(
                            "LET'S CONNECT", const Color(0xFFFF3D00), const Color(0xFF1B0600),
                                () {
                              scrollToWidget('Contact');
                            }),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Image.asset(
                    'asset/profile_pic.png',
                    height: 350,
                    width: 350,
                  ),
                ),
              ],
            );
          } else {
            showReset.sink.add(true);
            return Column(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text("Hey, ",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 47,
                                    fontFamily: 'FuturaMedium')),
                            Lottie.asset('asset/wave.json', height: 40, width: 40),
                          ],
                        ),
                      ),
                      const Flexible(
                        child: Text("I'm Bhavya",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 47,
                                fontFamily: 'FuturaMedium')),
                      ),
                      const Text(
                          'Flutter dev, loves building custom solutions that deliver exceptional user experiences for android & ios.',
                          style: TextStyle(
                              height: 1.5,
                              color: Color(0xFFB994A8),
                              fontFamily: 'Podkova',
                              fontSize: 24)),
                      const SizedBox(height: 30),
                      Flexible(
                          child: AnimatedGradientButton(
                              "LET'S CONNECT", const Color(0xFFFF3D00), const Color(0xFF1B0600),
                                  () {
                                scrollToWidget('Contact');
                              }))
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: Image.asset(
                    'asset/profile_pic.png',
                    height: 300,
                    width: 300,
                  ),
                ),
              ],
            );
          }
        });
  }

  Future scrollToItem(String con) async {
    Navigator.pushNamed(context, con);
  }

  Widget animatedTextWidget() {
    return AnimatedTextKit(repeatForever: true, animatedTexts: [
      WavyAnimatedText(
        'Flutter dev,',
        textStyle: GoogleFonts.zillaSlab(
            color: const Color(0xFFB994A8),
            fontSize: 24,
            fontWeight: FontWeight.bold),
        speed: const Duration(milliseconds: 350),
        //cursor: '|',
        textAlign: TextAlign.center,
      ),
    ]);
  }
}
