import 'package:flutter/material.dart';

class AboutScreenMobile extends StatefulWidget {
  const AboutScreenMobile({Key? key}) : super(key: key);

  @override
  _AboutScreenMobileState createState() => _AboutScreenMobileState();
}

class _AboutScreenMobileState extends State<AboutScreenMobile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFD9D9D9).withOpacity(0.05),
      height: 870,
      padding: EdgeInsets.only(left: 22,right: 22),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text('more about me...', style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontFamily: 'Futura',
              fontSize: 32,
              fontWeight: FontWeight.bold
          )),
          SizedBox(
            height: 40,
          ),
          Center(
            child: Image.asset(
              'asset/pic.png',
              height: 191,
              width: 191,
            ),
          ),
          SizedBox(
            width: 10,
          ),

          RichText(
            text: TextSpan(
              text: 'H',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 50
              ),
              children:  <TextSpan>[
                TextSpan(text:'ey there! Im Bhavya, a skilled mobile app developer with three years of experience creating cutting-edge solutions. With an in-depth understanding of the Flutter framework, I excel in building dynamic and intuitive applications that cater to the needs of modern users.As a self-starter, I thrive in fast-paced environments and can work collaboratively with designers, product managers, and other developers to ensure project success. With excellent communication skills, I can effectively convey ideas and work through complex problems to deliver exceptional results.  My expertise in the latest development practices has enabled me to deliver high-quality, bug-free code on time and within budget. I am proficient in Flutter, Dart, Java, and Javascript, and I continually seek to expand my knowledge base to stay ahead of the curve.',
                    style: TextStyle(
                        height: 1,
                        color: Color(0xFFFFFFFF).withOpacity(0.7),
                        fontFamily: 'Podkova',
                        fontSize: 18
                    )),
              ],
            ),
          )
          // Expanded(child: Text(
          //   style: TextStyle(
          //     height: 1,
          //     color: Color(0xFFFFFFFF).withOpacity(0.7),
          //     fontFamily: 'Podkova',
          //     fontSize: 22
          // ),
          //     'Hey there! Im Bhavya, a skilled mobile app developer with three years of experience creating cutting-edge solutions. With an in-depth understanding of the Flutter framework, I excel in building dynamic and intuitive applications that cater to the needs of modern users.As a self-starter, I thrive in fast-paced environments and can work collaboratively with designers, product managers, and other developers to ensure project success. With excellent communication skills, I can effectively convey ideas and work through complex problems to deliver exceptional results.  My expertise in the latest development practices has enabled me to deliver high-quality, bug-free code on time and within budget. I am proficient in Flutter, Dart, Java, and Javascript, and I continually seek to expand my knowledge base to stay ahead of the curve.'))
          //
        ],
      ),
    );
  }
}
