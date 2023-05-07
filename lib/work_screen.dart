import 'package:flutter/material.dart';

class WorkScreen extends StatefulWidget {
  const WorkScreen({Key? key}) : super(key: key);

  @override
  _WorkScreenState createState() => _WorkScreenState();
}

class _WorkScreenState extends State<WorkScreen> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext ctx, BoxConstraints constraints) {
          if (constraints.maxWidth >= 1000) {
            return Container(
              color: Color(0xFFD9D9D9).withOpacity(0.05),
              height: 1500,
              child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    width:MediaQuery.of(context).size.width/1.5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Work", style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontFamily: 'Futura',
                            fontSize: 28,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: customCard('asset/project1.jpeg', 'ChatBot in Flutter using DialogFlow'),
                            ),
                            const SizedBox(
                              width: 40,
                            ),
                            Expanded(
                              child: customCard('asset/project1.jpeg', 'ChatBot in Flutter using DialogFlow'),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: customCard('asset/project1.jpeg', 'ChatBot in Flutter using DialogFlow'),
                            ),
                            const SizedBox(
                              width: 40,
                            ),
                            Expanded(
                              child: customCard('asset/project1.jpeg', 'ChatBot in Flutter using DialogFlow'),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: customCard('asset/project1.jpeg', 'ChatBot in Flutter using DialogFlow'),
                            ),
                            const SizedBox(
                              width: 40,
                            ),
                            Expanded(
                              child: customCard('asset/project1.jpeg', 'ChatBot in Flutter using DialogFlow'),
                            )
                          ],
                        ),
                      ],
                    ),
                  )),
            );
          }
          else return Container(
            color: Color(0xFFD9D9D9).withOpacity(0.05),
            height: 2200,
            child: Align(
                alignment: Alignment.center,
                child: Container(
                  width:MediaQuery.of(context).size.width/1.5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Work", style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontFamily: 'Futura',
                          fontSize: 28,
                          fontWeight: FontWeight.bold
                      ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      customCard('asset/project1.jpeg', 'ChatBot in Flutter using DialogFlow', width: 400,height: 300),
                      SizedBox(
                        height: 14,
                      ),
                      customCard('asset/project1.jpeg', 'ChatBot in Flutter using DialogFlow',width: 400,height: 300),
                      SizedBox(
                        height: 14,
                      ),
                      customCard('asset/project1.jpeg', 'ChatBot in Flutter using DialogFlow',width: 400,height: 300),
                      SizedBox(
                        height: 14,
                      ),
                      customCard('asset/project1.jpeg', 'ChatBot in Flutter using DialogFlow',width: 400,height: 300),
                      SizedBox(
                        height: 14,
                      ),
                      customCard('asset/project1.jpeg', 'ChatBot in Flutter using DialogFlow',width: 400,height: 300),
                      SizedBox(
                        height: 14,
                      ),
                      customCard('asset/project1.jpeg', 'ChatBot in Flutter using DialogFlow',width: 400,height: 300),
                    ],
                  ),
                )),
          );
        });
  }

  Widget customCard(String image, String des, {double width = 300, double height = 350}){
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
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(14.0),
                    child: Image.asset(
                      image,
                      alignment: Alignment.center,
                      height: double.infinity,
                      width: double.infinity,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                const Text("ChatBot in Flutter using DialogFlow",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Podkova',
                      fontSize: 18,
                      fontWeight: FontWeight.w400
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
        ));
  }

}
