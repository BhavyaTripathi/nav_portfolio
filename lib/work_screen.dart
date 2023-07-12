import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_flutter_web/card_controller.dart';

class WorkScreen extends StatefulWidget {
  const WorkScreen({Key? key}) : super(key: key);

  @override
  _WorkScreenState createState() => _WorkScreenState();
}

class _WorkScreenState extends State<WorkScreen> {
  List<CardController> listController = [];
  @override
  void initState() {
    for(int i=0;i<8;i++){
      listController.add(CardController());
    }
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: LayoutBuilder(
          builder: (BuildContext ctx, BoxConstraints constraints) {
            if (constraints.maxWidth >= 1000) {
              return Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [const Color(0xFFD9D9D9).withOpacity(0.05), const Color(0xFF1B0600).withOpacity(0.2)],
                  ),
                ),
                height: 1800,
                child: Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width:MediaQuery.of(context).size.width/1.5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const DefaultTextStyle(
                            style: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontFamily: 'Futura',
                                fontSize: 28,
                                fontWeight: FontWeight.bold
                            ),
                            child: Text("Work",
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: customCard('asset/project1.jpeg',
                                    Row(
                                      children: [
                                        Image.asset('asset/flu.png',height: 20,width: 20),
                                        const SizedBox(width: 40),
                                        Image.asset('asset/dart.png',height: 20,width: 20),
                                        const SizedBox(width: 40),
                                        Image.asset('asset/dflow.png',height: 25,width: 25),
                                      ],
                                    )
                                    , index: 0,desc: 'This app is able to convincingly simulate human behaviour by conducting an intelligent conversation using a Google-owned developer of human-computer interaction technologies based on natural language conversations.'),
                              ),
                              const SizedBox(
                                width: 40,
                              ),
                              Expanded(
                                child: customCard('asset/project2.png', Row(
                                  children: [
                                    Image.asset('asset/flu.png',height: 20,width: 20),
                                    const SizedBox(width: 40),
                                    Image.asset('asset/dart.png',height: 20,width: 20),
                                  ],
                                ), index: 1,
                                    desc: 'This app is able to fetch data from NEWS API and display the same to the user. The users can also view category wise news based on their interests which helps them sort news accordingly.'),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: customCard('asset/project3.jpeg', Row(
                                  children: [
                                    Image.asset('asset/flu.png',height: 20,width: 20),
                                    const SizedBox(width: 40),
                                    Image.asset('asset/dart.png',height: 20,width: 20),
                                    const SizedBox(width: 40),
                                    Image.asset('asset/sqlite.png',height: 25,width: 25),
                                  ],
                                ), index: 2,
                                    desc: 'This app is able to create To-do list with Flutter with the help of SQLite as the local database. This app is also able to perform other CRUD operations as well such as read, update, delete'),
                              ),
                              const SizedBox(
                                width: 40,
                              ),
                              Expanded(
                                child: customCard('asset/project4.jpeg', Row(
                                  children: [
                                    Image.asset('asset/flu.png',height: 20,width: 20),
                                    const SizedBox(width: 40),
                                    Image.asset('asset/dart.png',height: 20,width: 20),
                                  ],
                                ), index: 3, desc: 'This app is an E-commerce app that has all the screens that an e-commerce app should have. This app is able to navigate to all the screens and has the functionality to add to wishlist, and cart.'),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: customCard('asset/project5.jpeg', Row(
                                  children: [
                                    Image.asset('asset/flu.png',height: 20,width: 20),
                                    const SizedBox(width: 40),
                                    Image.asset('asset/dart.png',height: 20,width: 20),
                                  ],
                                ), index: 4, desc: 'This app is the exact UI of the netflix application.'),
                              ),
                              const SizedBox(
                                width: 40,
                              ),
                              Expanded(
                                child: customCard('asset/project6.jpeg', Row(
                                  children: [
                                    Image.asset('asset/flu.png',height: 20,width: 20),
                                    const SizedBox(width: 40),
                                    Image.asset('asset/dart.png',height: 20,width: 20),
                                  ],
                                ), index: 5, desc: 'This app is similar to the reels app that displays the videos in the form of a list and has the functionality of displaying likes, comments.'),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: customCard('asset/project7.jpeg', Row(
                                  children: [
                                    Image.asset('asset/flu.png',height: 20,width: 20),
                                    const SizedBox(width: 40),
                                    Image.asset('asset/dart.png',height: 20,width: 20),
                                  ],
                                ), index: 6, desc: 'This app is able to perform basic operations as the calculator using Neumorphism, an interesting UI element that uses shadows to create an Elevation effect.'),
                              ),
                              const SizedBox(
                                width: 40,
                              ),
                              Expanded(
                                child: customCard('asset/project8.jpeg', Row(
                                  children: [
                                    Image.asset('asset/flu.png',height: 20,width: 20),
                                    const SizedBox(width: 40),
                                    Image.asset('asset/dart.png',height: 20,width: 20),
                                    const SizedBox(width: 40),
                                    Image.asset('asset/firebase.png',height: 25,width: 25),
                                  ],
                                ), index: 7, desc: 'This app is able to integrate and deliver push notifications to a Flutter application using an awesome service provided by Firebase called Firebase Cloud Messaging.'),
                              )
                            ],
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
                    colors: [const Color(0xFFD9D9D9).withOpacity(0.05), const Color(0xFF1B0600).withOpacity(0.2)],
                  ),
                ),
                height: 2700,
                child: Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width:MediaQuery.of(context).size.width/1.5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                           const DefaultTextStyle(
                             style: TextStyle(
                                 color: Color(0xFFFFFFFF),
                                 fontFamily: 'Futura',
                                 fontSize: 28,
                                 fontWeight: FontWeight.bold
                             ),
                             child: Text("Work",
                          ),
                           ),
                          const SizedBox(
                            height: 40,
                          ),
                          customCard('asset/project1.jpeg', Row(
                            children: [
                              Image.asset('asset/flu.png',height: 20,width: 20),
                              const SizedBox(width: 40),
                              Image.asset('asset/dart.png',height: 20,width: 20),
                              const SizedBox(width: 40),
                              Image.asset('asset/dflow.png',height: 25,width: 25),
                            ],
                          ), width: 400,height: 300, index: 0, desc: 'This app is able to convincingly simulate human behaviour by conducting an intelligent conversation using a Google-owned developer of human-computer interaction technologies based on natural language conversations.',
                              font: 16),
                          const SizedBox(
                            height: 14,
                          ),
                          customCard('asset/project2.png', Row(
                            children: [
                              Image.asset('asset/flu.png',height: 20,width: 20),
                              const SizedBox(width: 40),
                              Image.asset('asset/dart.png',height: 20,width: 20),
                              const SizedBox(width: 40),
                              Image.asset('asset/dflow.png',height: 25,width: 25),
                            ],
                          ),width: 400,height: 300, index: 1, desc: 'This app is able to fetch data from NEWS API and display the same to the user. The users can also view category wise news based on their interests which helps them sort news accordingly.',
                              font: 16),
                          const SizedBox(
                            height: 14,
                          ),
                          customCard('asset/project3.jpeg', Row(
                            children: [
                              Image.asset('asset/flu.png',height: 20,width: 20),
                              const SizedBox(width: 40),
                              Image.asset('asset/dart.png',height: 20,width: 20),
                              const SizedBox(width: 40),
                              Image.asset('asset/dflow.png',height: 25,width: 25),
                            ],
                          ),width: 400,height: 300, index: 2, desc: 'This app is able to create To-do list with Flutter with the help of SQLite as the local database. This app is also able to perform other CRUD operations as well such as read, update, delete',
                              font: 16),
                          const SizedBox(
                            height: 14,
                          ),
                          customCard('asset/project4.jpeg', Row(
                            children: [
                              Image.asset('asset/flu.png',height: 20,width: 20),
                              const SizedBox(width: 40),
                              Image.asset('asset/dart.png',height: 20,width: 20),
                              const SizedBox(width: 40),
                              Image.asset('asset/dflow.png',height: 25,width: 25),
                            ],
                          ),width: 400,height: 300, index: 3, desc: 'This app is an E-commerce app that has all the screens that an e-commerce app should have. This app is able to navigate to all the screens and has the functionality to add to wishlist, and cart.'),
                          const SizedBox(
                            height: 14,
                          ),
                          customCard('asset/project5.jpeg', Row(
                            children: [
                              Image.asset('asset/flu.png',height: 20,width: 20),
                              const SizedBox(width: 40),
                              Image.asset('asset/dart.png',height: 20,width: 20),
                              const SizedBox(width: 40),
                              Image.asset('asset/dflow.png',height: 25,width: 25),
                            ],
                          ),width: 400,height: 300, index: 4, desc: 'This app is the exact UI of the netflix application.'),
                          const SizedBox(
                            height: 14,
                          ),
                          customCard('asset/project6.jpeg',Row(
                            children: [
                              Image.asset('asset/flu.png',height: 20,width: 20),
                              const SizedBox(width: 40),
                              Image.asset('asset/dart.png',height: 20,width: 20),
                              const SizedBox(width: 40),
                              Image.asset('asset/dflow.png',height: 25,width: 25),
                            ],
                          ),width: 400,height: 300, index: 5, desc: 'This app is similar to the reels app that displays the videos in the form of a list and has the functionality of displaying likes, comments.'),
                          customCard('asset/project7.jpeg', Row(
                            children: [
                              Image.asset('asset/flu.png',height: 20,width: 20),
                              const SizedBox(width: 40),
                              Image.asset('asset/dart.png',height: 20,width: 20),
                              const SizedBox(width: 40),
                              Image.asset('asset/dflow.png',height: 25,width: 25),
                            ],
                          ),width: 400,height: 300, index: 6, desc: 'This app is able to perform basic operations as the calculator using Neumorphism, an interesting UI element that uses shadows to create an Elevation effect.'),
                          const SizedBox(
                            height: 14,
                          ),
                          customCard('asset/project8.jpeg',Row(
                            children: [
                              Image.asset('asset/flu.png',height: 20,width: 20),
                              const SizedBox(width: 40),
                              Image.asset('asset/dart.png',height: 20,width: 20),
                              const SizedBox(width: 40),
                              Image.asset('asset/dflow.png',height: 25,width: 25),
                            ],
                          ),width: 400,height: 300, index: 7, desc: 'This app is able to integrate and deliver push notifications to a Flutter application using an awesome service provided by Firebase called Firebase Cloud Messaging.'),
                        ],
                      ),
                    )),
              );
            }
          }),
    );
  }

  Widget roundLogo(String text, {double size=30}){
    return Row(
      children: [
        Image.asset('asset/fl.png',height: 25,width: 25),
        const SizedBox(width: 20,),
        Image.asset('asset/fl.png',height: 25,width: 25),
      ],
    );
  }

  Widget customCard(String image, Widget img, {double width = 300, double height = 350, int index = 0, String desc='', double font = 20}){
    return MouseRegion(
      onEnter: (_){
        listController[index].flipCardController.toggleCard();
      },
      child: Card(
          color: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          child: SizedBox(
            width: width,
            height: height,
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
                        child: Image.asset(
                          image,
                          alignment: Alignment.center,
                          height: double.infinity,
                          width: double.infinity,
                          fit: BoxFit.fill,
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
                  img,
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
    );
  }

  Widget animatedTextWidget(String text, double font) {
    return AnimatedTextKit(
        repeatForever: true,
        animatedTexts: [
          TypewriterAnimatedText(text,
              textAlign: TextAlign.left,
              textStyle:TextStyle(
                color: const Color(0xFFFFFFFF).withOpacity(0.5),
                fontFamily: 'FuturaMedium',
                letterSpacing: 1.5,
                fontSize: font,
                //fontWeight: FontWeight.w400
              ),
              speed: const Duration(milliseconds: 30),
              cursor: '|'),
        ]
    );
  }

}
