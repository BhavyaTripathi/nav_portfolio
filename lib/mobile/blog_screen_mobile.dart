import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

class BlogScreenMobile extends StatefulWidget {
  const BlogScreenMobile({Key? key}) : super(key: key);

  @override
  _BlogScreenMobileState createState() => _BlogScreenMobileState();
}

class _BlogScreenMobileState extends State<BlogScreenMobile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [ const Color(0xFF1B0600).withOpacity(0.2), const Color(0xFF1B0600),],
        ),
      ),
      height: 800,
      child: Padding(
        padding: const EdgeInsets.only(left: 22.0, right: 22),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            const Text("Blogs", style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontFamily: 'Futura',
                fontSize: 32,
                fontWeight: FontWeight.bold
            ),
            ),
            const SizedBox(
              height: 40,
            ),
            customCard('asset/blog1.png', 'Flutter Apps Using Common Business Logic', width: 400, height: 300,index: 0,
                desc: 'In this blog, I built a Flutter application using common code. Codesharing is an approach that ensures Code reusability, as the common code base which contains the business logic can be used by any framework.',
                font: 16),
            const SizedBox(
              height: 14,
            ),
            customCard('asset/blog2.png', 'Simplify Flutter & AngularDart development with common code', width: 400, height: 300, index: 1,
                desc: 'In this blog, I built Flutter and AngularDart applications using common business logic. The common code base which contains the business logic can be used by both Flutter and AngularDart applications. The only thing that the respective application needs to focus on is the UI part which further leads to Faster development.',
                font: 16)
          ],
        ),
      ),
    );
  }

  Widget customCard(String image, String des, {double width = 300, double height = 350, int index =0, String desc ='', double font = 20}){
    return Card(
        color: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
        child: SizedBox(
            width: width,
            height: 300,
            child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(14.0),
                          child: Container(
                            color: Colors.white,
                            child: Image.asset(
                              image,
                              alignment: Alignment.center,
                              height: 250,
                              width: double.infinity,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      Text("ChatBot in Flutter using DialogFlow",
                        style: TextStyle(
                            color: const Color(0xFFFFFFFF).withOpacity(0.7),
                            fontFamily: 'Podkova',
                            fontSize: 18,
                            fontWeight: FontWeight.w700
                        ),),
                    ]))));
  }
  Widget animatedTextWidget(String text, double font) {
    return AnimatedTextKit(
        repeatForever: true,
        animatedTexts: [
          TypewriterAnimatedText(text,
              textAlign: TextAlign.center,
              textStyle:TextStyle(
                color: const Color(0xFFFFFFFF).withOpacity(0.5),
                fontFamily: 'FuturaMedium',
                letterSpacing: 1.5,
                fontSize: font,
                //fontWeight: FontWeight.w400
              ),
              speed: const Duration(milliseconds: 100),
              cursor: '|'),
        ]
    );
  }
}
