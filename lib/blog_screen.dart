import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'card_controller.dart';

class BlogScreen extends StatefulWidget {
  const BlogScreen({Key? key}) : super(key: key);

  @override
  _BlogScreenState createState() => _BlogScreenState();
}

class _BlogScreenState extends State<BlogScreen> {
  List<CardController> listController = [];
  @override
  void initState() {
    for(int i=0;i<2;i++){
      listController.add(CardController());
    }
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1B0600),
      body: SingleChildScrollView(
        child: LayoutBuilder(
            builder: (BuildContext ctx, BoxConstraints constraints) {
              if (constraints.maxWidth >= 1000) {
                return Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [ const Color(0xFF1B0600).withOpacity(0.2), const Color(0xFF1B0600),],
                    ),
                  ),
                  height: 625,
                  child: Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        width:MediaQuery.of(context).size.width/1.5,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Blogs", style: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontFamily: 'Futura',
                                fontSize: 28,
                                fontWeight: FontWeight.bold
                            ),
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: customCard('asset/blog1.png', 'Flutter Apps Using Common Business Logic', width: 400, height: 300,index: 0,
                                      desc: 'In this blog, I built a Flutter application using common code. Codesharing is an approach that ensures Code reusability, as the common code base which contains the business logic can be used by any framework.',
                                  link: 'https://medium.com/dlt-labs-publication/build-flutter-apps-with-common-business-logic-566f722231c1'),
                                ),
                                const SizedBox(
                                  width: 40,
                                ),
                                Expanded(
                                  child:
                                  customCard('asset/blog2.png', 'Simplify Flutter & AngularDart development with common code', width: 400, height: 300, index: 1,
                                      desc: 'In this blog, I built Flutter and AngularDart applications using common business logic. The common code base which contains the business logic can be used by both Flutter and AngularDart applications. The only thing that the respective application needs to focus on is the UI part which further leads to Faster development.',
                                  link: 'https://medium.com/dlt-labs-publication/simplify-flutter-angulardart-development-with-common-code-4badc8ee4ba1'),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                          ],
                        ),
                      )),
                );
              }
              else {
                return Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [ const Color(0xFF1B0600).withOpacity(0.2), const Color(0xFF1B0600),],
                    ),
                  ),
                  height: 800,
                  child: Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        width:MediaQuery.of(context).size.width/1.5,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text("Blogs", style: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontFamily: 'Futura',
                                fontSize: 28,
                                fontWeight: FontWeight.bold
                            ),
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            customCard('asset/blog1.png', 'Flutter Apps Using Common Business Logic', width: 400, height: 300,index: 0,
                                desc: 'In this blog, I built a Flutter application using common code. Codesharing is an approach that ensures Code reusability, as the common code base which contains the business logic can be used by any framework.',
                                font: 16, link: 'https://medium.com/dlt-labs-publication/build-flutter-apps-with-common-business-logic-566f722231c1'),
                            const SizedBox(
                              height: 14,
                            ),
                            customCard('asset/blog2.png', 'Simplify Flutter & AngularDart development with common code', width: 400, height: 300, index: 1,
                                desc: 'In this blog, I built Flutter and AngularDart applications using common business logic. The common code base which contains the business logic can be used by both Flutter and AngularDart applications. The only thing that the respective application needs to focus on is the UI part which further leads to Faster development.',
                                font: 16, link: 'https://medium.com/dlt-labs-publication/simplify-flutter-angulardart-development-with-common-code-4badc8ee4ba1'),
                          ],
                        ),
                      )),
                );
              }
            }),
      ),
    );
  }

  Widget customCard(String image, String des, {double width = 300, double height = 350, int index =0, String desc ='', double font = 20, String link = ''}){
    return MouseRegion(
      onEnter: (_){
        listController[index].flipCardController.toggleCard();
      },
      child: InkWell(
        onTap: (){
          openLink(link);
        },
        child: Card(
            color: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            child: SizedBox(
              width: width,
              height: 345,
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: FlipCard(
                        flipOnTouch: false,
                        controller: listController[index].flipCardController,
                        front: ClipRRect(
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
                        back: ClipRRect(
                          borderRadius: BorderRadius.circular(14.0),
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: const Color(0xFFFFFFFF).withOpacity(0.2)
                                ),
                                borderRadius: const BorderRadius.all(Radius.circular(14))
                            ),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: animatedTextWidget(desc, font),
                              ),
                            ),
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
                    const SizedBox(
                      height: 14,
                    ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.start,
                    //   children: [
                    //     Icon(Icons.flag, color: Colors.white),
                    //     Icon(Icons.flag, color: Colors.white),
                    //     Icon(Icons.flag, color: Colors.white),
                    //     Icon(Icons.flag, color: Colors.white),
                    //   ],
                    // )
                  ],
                ),
              ),
            )),
      ),
    );
  }

  openLink(String url) async {
    const url = 'https://www.linkedin.com/in/bhavya-tripathi/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
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
