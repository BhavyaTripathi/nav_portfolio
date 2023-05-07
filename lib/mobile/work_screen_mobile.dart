import 'package:flutter/material.dart';

class WorkScreenMobile extends StatefulWidget {
  const WorkScreenMobile({Key? key}) : super(key: key);

  @override
  _WorkScreenMobileState createState() => _WorkScreenMobileState();
}

class _WorkScreenMobileState extends State<WorkScreenMobile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFD9D9D9).withOpacity(0.05),
      height: 2100,
      child: Padding(
        padding: const EdgeInsets.only(left: 22.0, right: 22),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Text("Work", style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontFamily: 'Futura',
                fontSize: 32,
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
      ),
    );
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
