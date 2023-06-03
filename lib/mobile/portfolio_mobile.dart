import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio_flutter_web/mobile/about_screen_mobile.dart';
import 'package:portfolio_flutter_web/mobile/custom_app_bar_mobile.dart';
import 'package:portfolio_flutter_web/mobile/custom_bottom_navbar.dart';
import 'package:portfolio_flutter_web/mobile/work_screen_mobile.dart';
import 'blog_screen_mobile.dart';
import 'contact_screen_mobile.dart';

class PortfolioMobile extends StatefulWidget {
  const PortfolioMobile({Key? key}) : super(key: key);

  @override
  _PortfolioMobileState createState() => _PortfolioMobileState();
}

class _PortfolioMobileState extends State<PortfolioMobile> {

  final contactKey = GlobalKey();

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
        extendBody: true,
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(72),
            child: Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: CustomAppBarMobile()
            )
        ),
        bottomNavigationBar: const CustomBottomNavbar(),
        body: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height/5,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 22.0, right: 22),
                    child: heroSection(),
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
                const AboutScreenMobile(),
                Container(
                  color: const Color(0xFFD9D9D9).withOpacity(0.05),
                  height: 40,
                ),
                const WorkScreenMobile(),
                const SizedBox(
                  height: 40,
                ),
                const BlogScreenMobile(),
                Container(
                    key: contactKey,
                    child: const ContactScreenMobile()),
                Container(
                  color: const Color(0xFF000000),
                  height: 50,
                ),
              ]
          ),
        ),
      ),
    );
  }

  Widget heroSection(){
    return SizedBox(
      height: 690,
      child: Column(
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
                      const Text("Hey, ", style: TextStyle(
                          color: Colors.white,
                          fontSize: 44,
                          fontFamily: 'FuturaMedium'
                      )),
                      Lottie.asset('asset/wave.json',height: 40,width: 40),
                    ],
                  ),
                ),
                const SizedBox(
                    height: 5
                ),

                const Text("I'm Bhavya", style: TextStyle(
                    color: Colors.white,
                    fontSize: 44,
                    fontFamily: 'FuturaMedium'
                )),
                const SizedBox(
                    height: 20
                ),
                animatedTextWidget(),
                RichText(
                  text: TextSpan(
                    style: GoogleFonts.zillaSlab(color: const Color(0xFFB994A8), fontSize: 24),
                    children: <TextSpan>[
                      // TextSpan(text: 'Flutter dev,', style: GoogleFonts.zillaSlab(color: Color(0xFFB994A8), fontSize: 24, fontWeight: FontWeight.bold)),
                      TextSpan(text: 'loves building custom solutions that deliver', style: GoogleFonts.zillaSlab(color: const Color(0xFFB994A8), fontSize: 24)),
                      TextSpan(text: ' exceptional user experiences', style: GoogleFonts.zillaSlab(color: const Color(0xFFB994A8), fontSize: 24, fontWeight: FontWeight.bold)),
                      TextSpan(text: ' for ', style: GoogleFonts.zillaSlab(color: const Color(0xFFB994A8), fontSize: 24)),
                      TextSpan(text: 'android', style: GoogleFonts.zillaSlabHighlight(color: const Color(0xFFB994A8), fontSize: 24)),
                      TextSpan(text: ' & ', style: GoogleFonts.zillaSlab(color: const Color(0xFFB994A8), fontSize: 24)),
                      TextSpan(text: 'ios.', style: GoogleFonts.zillaSlabHighlight(color: const Color(0xFFB994A8), fontSize: 24)),

                    ],
                  ),
                ),
                const SizedBox(
                    height: 30
                ),

                Flexible(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints.tightFor( height: 46, width: 150),
                    child: ElevatedButton(onPressed: (){
                      final con = contactKey.currentContext??context;
                      scrollToItem(con);
                    },style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.resolveWith((states) {
                          return const Color(0xFFFF3D00);
                        }),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40.0),
                            )
                        )
                    ),
                        child: const Text("LET'S CONNECT",
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'FuturaBold',
                                letterSpacing: 2,
                                color: Colors.white
                            )
                        )),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: Image.asset(
              'asset/profile_pic.png',
              height: 224,
              width: 240,
            ),
          ),
        ],
      ),
    );

  }

  Future scrollToItem(BuildContext con) async{
    await Scrollable.ensureVisible(con, duration: const Duration(milliseconds: 3000), curve: Curves.easeInCubic);
  }

  Widget animatedTextWidget() {
    return AnimatedTextKit(
        repeatForever: true,
        animatedTexts: [
          WavyAnimatedText('Flutter dev,',
            textStyle: GoogleFonts.zillaSlab(color: const Color(0xFFB994A8),
                fontSize: 24, fontWeight: FontWeight.bold),
            speed: const Duration(milliseconds: 300),
            //cursor: '|',
            textAlign: TextAlign.center,
          ),
        ]
    );
  }

}
