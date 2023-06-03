import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

class WorkScreenMobile extends StatefulWidget {
  const WorkScreenMobile({Key? key}) : super(key: key);

  @override
  _WorkScreenMobileState createState() => _WorkScreenMobileState();
}

class _WorkScreenMobileState extends State<WorkScreenMobile> {

  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [const Color(0xFFD9D9D9).withOpacity(0.05), const Color(0xFF1B0600).withOpacity(0.2)],
        ),
      ),
      height: 2700,
      child: Padding(
        padding: const EdgeInsets.only(left: 22.0, right: 22),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            const Text("Work", style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontFamily: 'Futura',
                fontSize: 32,
                fontWeight: FontWeight.bold
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
            ),width: 400,height: 300, index: 3),
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
            ),width: 400,height: 300, index: 4),
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
            ),width: 400,height: 300, index: 5),
            const SizedBox(
              height: 14,
            ),
            customCard('asset/project7.jpeg', Row(
              children: [
                Image.asset('asset/flu.png',height: 20,width: 20),
                const SizedBox(width: 40),
                Image.asset('asset/dart.png',height: 20,width: 20),
                const SizedBox(width: 40),
                Image.asset('asset/dflow.png',height: 25,width: 25),
              ],
            ),width: 400,height: 300, index: 6),
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
            ),width: 400,height: 300, index: 7),
          ],
        ),
      ),
    );
  }

  Widget customCard(String image, Widget img, {double width = 300, double height = 350, int index = 0, String desc='', double font = 20}){
    return Card(
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
                    flipOnTouch: true,
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
              ],
            ),
          ),
        ));
  }

  Widget animatedTextWidget(String text, double font) {
    return AnimatedTextKit(
        repeatForever: false,
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
