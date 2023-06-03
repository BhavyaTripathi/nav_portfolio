import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutScreenMobile extends StatefulWidget {
  const AboutScreenMobile({Key? key}) : super(key: key);

  @override
  _AboutScreenMobileState createState() => _AboutScreenMobileState();
}

class _AboutScreenMobileState extends State<AboutScreenMobile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [const Color(0xFFD9D9D9).withOpacity(0.01),const Color(0xFFD9D9D9).withOpacity(0.05)],
        ),
      ),
      height: 1100,
      padding: const EdgeInsets.only(left: 22,right: 22),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 30,
          ),
          const Text('more about me...', style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontFamily: 'Futura',
              fontSize: 32,
              fontWeight: FontWeight.bold
          )),
          const SizedBox(
            height: 40,
          ),
          Center(
            child: Image.asset(
              'asset/pic.png',
              height: 191,
              width: 191,
            ),
          ),
          const SizedBox(
            width: 10,
          ),

          RichText(
            text: TextSpan(
              text: 'H',
              style: GoogleFonts.zillaSlab(color: Colors.white, fontSize: 50, height: 1.5),
              children:  <TextSpan>[
                TextSpan(text: 'ey there! Im ', style: GoogleFonts.zillaSlab(color: const Color(0xFFFFFFFF).withOpacity(0.7), fontSize: 18)),
                TextSpan(text: 'Bhavya,', style: GoogleFonts.zillaSlab(color: const Color(0xFFFFFFFF).withOpacity(0.7), fontSize: 18, fontWeight: FontWeight.bold)),
                TextSpan(text: ' a ', style: GoogleFonts.zillaSlab(color: const Color(0xFFFFFFFF).withOpacity(0.7), fontSize: 18)),
                TextSpan(text: 'skilled mobile app developer with three years of experience creating cutting-edge solutions.', style: GoogleFonts.zillaSlab(color: const Color(0xFFFFFFFF).withOpacity(0.7), fontSize: 18, fontWeight: FontWeight.bold)),
                TextSpan(text: ' With an in-depth understanding of the Flutter framework, I excel in building dynamic and intuitive applications that cater to the needs of modern users.   As a self-starter, I thrive in fast-paced environments and can work collaboratively with designers, product managers, and other developers to ensure project success. With excellent communication skills, I can effectively convey ideas and work through complex problems to deliver exceptional results.  My expertise in the latest development practices has enabled me to deliver high-quality, bug-free code on time and within budget. I am proficient in ', style: GoogleFonts.zillaSlab(color: const Color(0xFFFFFFFF).withOpacity(0.7), fontSize: 18)),
                TextSpan(text: ' Flutter, Dart, Java, and Javascript', style: GoogleFonts.zillaSlabHighlight(color: const Color(0xFFFFFFFF).withOpacity(0.7), fontSize: 18)),
                TextSpan(text: ', and I continually seek to expand my knowledge base to stay ahead of the curve.', style: GoogleFonts.zillaSlab(color: const Color(0xFFFFFFFF).withOpacity(0.7), fontSize: 18)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
