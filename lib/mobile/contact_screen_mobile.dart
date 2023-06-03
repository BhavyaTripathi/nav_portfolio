import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactScreenMobile extends StatefulWidget {
  const ContactScreenMobile({Key? key}) : super(key: key);

  @override
  _ContactScreenMobileState createState() => _ContactScreenMobileState();
}

class _ContactScreenMobileState extends State<ContactScreenMobile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [ Color(0xFF1B0600), Color(0xFF000000)],
        ),
      ),
      height: 760,
      child: Padding(
        padding: const EdgeInsets.only(left: 22.0, right: 22),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 60,
            ),
            const Text("Get in touch", style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 34,
                fontFamily: 'Futura'
            )),
            const SizedBox(
              height: 40,
            ),
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                'asset/contact.png',
                height: 150,
                width: 150,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Text("Message", style: TextStyle(
                    color: const Color(0xFFFFFFFF).withOpacity(0.56),
                    fontSize: 16,
                    fontFamily: 'Podkova'
                )),
                const SizedBox(
                  height: 5,
                ),
                TextField(
                  maxLines: 5,
                  minLines: 5,
                  style: TextStyle(
                      color: const Color(0xFFFFFFFF).withOpacity(0.56),
                      fontSize: 16,
                      fontFamily: 'Podkova'
                  ),
                  cursorColor: const Color(0xFFFFFFFF).withOpacity(0.56),
                  decoration: InputDecoration(
                    isDense: true,
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: const Color(0xFFFFFFFF).withOpacity(0.40))
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: const Color(0xFFFFFFFF).withOpacity(0.40))
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: const Color(0xFFFFFFFF).withOpacity(0.40))
                    ),
                    hintStyle: TextStyle(
                        color: const Color(0xFFFFFFFF).withOpacity(0.40),
                        fontSize: 16,
                        fontFamily: 'Podkova'
                    ),
                    hintText: 'Type here',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ConstrainedBox(
                  constraints: const BoxConstraints.tightFor( height: 40,width: double.infinity),
                  child: ElevatedButton(onPressed: (){},style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith((states) {
                        return const Color(0xFFFF3D00);
                      }),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          )
                      )
                  ),
                      child: const Text("SEND MESSAGE",
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'FuturaBold',
                              letterSpacing: 2,
                              color: Colors.white
                          )
                      )),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    Container(
                      height: 45,
                      width: 5,
                      color: const Color(0xFFFFFFFF).withOpacity(0.2),
                    ),
                    Expanded(
                      child: Center(
                          child: RichText(
                            text: TextSpan(
                                text: 'tripathii.bhavya@gmail.com',
                                style: TextStyle(
                                    fontFamily: 'FuturaMedium',
                                    letterSpacing: 2,
                                    color: const Color(0xFFFFFFFF)
                                        .withOpacity(0.5))),
                          )
                      ),
                    ),
                    Container(
                      height: 45,
                      width: 5,
                      color: const Color(0xFFFFFFFF).withOpacity(0.2),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'asset/linkedin.png',
                      height: 20,
                      width: 20,
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Image.asset(
                      'asset/github.png',
                      height: 20,
                      width: 20,
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Developed with ", style: GoogleFonts.zillaSlab(color: const Color(0xFFACACAC), fontSize: 14)),
                        Image.asset('asset/heart.png',height: 14,width: 14,),
                        Text(" by ", style: GoogleFonts.zillaSlab(color: const Color(0xFFACACAC), fontSize: 14)),
                        Text(" Bhavya Tripathi ", style: GoogleFonts.zillaSlab(color: const Color(0xFFACACAC), fontSize: 14, fontWeight: FontWeight.bold)),
                      ],
                    )
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget textField(String hint){
    return TextField(
      style: TextStyle(
          color: const Color(0xFFFFFFFF).withOpacity(0.56),
          fontSize: 16,
          fontFamily: 'Podkova'
      ),
      cursorColor: const Color(0xFFFFFFFF).withOpacity(0.56),
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderSide: BorderSide(color: const Color(0xFFFFFFFF).withOpacity(0.40))
        ),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: const Color(0xFFFFFFFF).withOpacity(0.40))
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: const Color(0xFFFFFFFF).withOpacity(0.40))
        ),
        hintStyle: TextStyle(
            color: const Color(0xFFFFFFFF).withOpacity(0.40),
            fontSize: 16,
            fontFamily: 'Podkova'
        ),
        hintText: hint,
      ),
    );
  }

}
