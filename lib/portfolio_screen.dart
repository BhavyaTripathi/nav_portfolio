import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio_flutter_web/work_screen.dart';

import 'about_screen.dart';
import 'blog_screen.dart';
import 'contact_screen.dart';
import 'custom_app_bar.dart';


class PortfolioScreen extends StatefulWidget {
  const PortfolioScreen({Key? key}) : super(key: key);

  @override
  _PortfolioScreenState createState() => _PortfolioScreenState();
}

class _PortfolioScreenState extends State<PortfolioScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1B0600),
      extendBodyBehindAppBar: true,
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: CustomAppBar()
          )
      ),
      body: Center(
        child: ListView(
            shrinkWrap: true,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.width/4,
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                    height: 670,
                    width:MediaQuery.of(context).size.width/1.5,
                    child: heroSection()),
              ),
              SizedBox(
                height: 80,
              ),
              AboutScreen(),
              SizedBox(
                height: 40,
              ),
              WorkScreen(),
              SizedBox(
                height: 40,
              ),
              BlogScreen(),
              SizedBox(
                height: 40,
              ),
              ContactScreen(),
            ]
        ),
      ),
    );
  }

  Widget heroSection(){
    return LayoutBuilder(
        builder: (BuildContext ctx, BoxConstraints constraints) {
          if (constraints.maxWidth >= 500) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
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
                                fontSize: 42,
                                fontFamily: 'Futura'
                            )),
                            Lottie.asset('asset/wave.json',height: 40,width: 40),
                          ],
                        ),
                      ),

                      Flexible(
                        child: const Text("I'm Bhavya", style: TextStyle(
                            color: Colors.white,
                            fontSize: 42,
                            fontFamily: 'Futura'
                        )),
                      ),

                      const Text('Flutter dev, loves building custom solutions that deliver exceptional user experiences for android & ios.',
                          style: TextStyle(
                              height: 1.5,
                              color: Color(0xFFB994A8),
                              fontFamily: 'Podkova',
                              fontSize: 26
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
                                      fontSize: 18,
                                      fontFamily: 'Podkova',
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
                  width: 20,
                ),
                Expanded(
                  child: Image.asset(
                    'asset/potrait.png',
                    height: 374,
                    width: 374,
                  ),
                ),
              ],
            );
          }
          else return Column(
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

                    const Text("I'm Bhavya", style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontFamily: 'Futura'
                    )),

                    const Text('Flutter dev, loves building custom solutions that deliver exceptional user experiences for android & ios.',
                        style: TextStyle(
                            height: 1.5,
                            color: Color(0xFFB994A8),
                            fontFamily: 'Podkova',
                            fontSize: 24
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
                                    fontSize: 18,
                                    fontFamily: 'Podkova',
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
                  height: 300,
                  width: 300,
                ),
              ),
            ],
          );
        });

  }

}
