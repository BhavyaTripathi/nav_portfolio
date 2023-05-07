import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio_flutter_web/mobile/about_screen_mobile.dart';
import 'package:portfolio_flutter_web/mobile/custom_app_bar_mobile.dart';
import 'package:portfolio_flutter_web/mobile/custom_bottom_navbar.dart';
import 'package:portfolio_flutter_web/mobile/work_screen_mobile.dart';

import '../about_screen.dart';
import '../blog_screen.dart';
import '../custom_app_bar.dart';
import '../work_screen.dart';
import 'blog_screen_mobile.dart';
import 'contact_screen_mobile.dart';

class PortfolioMobile extends StatefulWidget {
  const PortfolioMobile({Key? key}) : super(key: key);

  @override
  _PortfolioMobileState createState() => _PortfolioMobileState();
}

class _PortfolioMobileState extends State<PortfolioMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1B0600),
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(72),
          child: Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: CustomAppBarMobile()
          )
      ),
      bottomNavigationBar: CustomBottomNavbar(),
      body: Center(
        child: ListView(
            shrinkWrap: true,
            children: [
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(left: 22.0, right: 22),
                  child: heroSection(),
                ),
              ),
              SizedBox(
                height: 80,
              ),
              AboutScreenMobile(),
              SizedBox(
                height: 40,
              ),
              WorkScreenMobile(),
              SizedBox(
                height: 40,
              ),
              BlogScreenMobile(),
              SizedBox(
                height: 40,
              ),
              ContactScreenMobile(),
            ]
        ),
      ),
    );
  }

  Widget heroSection(){
    return Container(
      height: 600,
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
                          fontSize: 40,
                          fontFamily: 'Futura'
                      )),
                      Lottie.asset('asset/wave.json',height: 40,width: 40),
                    ],
                  ),
                ),
                SizedBox(
                    height: 5
                ),

                const Text("I'm Bhavya", style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontFamily: 'Futura'
                )),
                SizedBox(
                    height: 20
                ),

                const Text('Flutter dev, loves building custom solutions that deliver exceptional user experiences for android & ios.',
                    style: TextStyle(
                        color: Color(0xFFB994A8),
                        fontFamily: 'Podkova',
                        fontSize: 18
                    )),
                SizedBox(
                    height: 30
                ),

                Flexible(
                  child: ConstrainedBox(
                    constraints: BoxConstraints.tightFor( height: 40),
                    child: ElevatedButton(onPressed: (){},
                        child: Text("LET'S CONNECT",
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'Futura',
                                color: Colors.white
                            )
                        ),style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.resolveWith((states) {
                              return Color(0xFFFF3D00);
                            }),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                )
                            )
                        )),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Image.asset(
              'asset/potrait.png',
              height: 224,
              width: 240,
            ),
          ),
        ],
      ),
    );

  }

}
