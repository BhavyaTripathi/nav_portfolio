import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_flutter_web/animated_gradient_button.dart';
import 'package:url_launcher/url_launcher.dart';


class ContactScreen extends StatefulWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  _ContactScreenState createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {

  TextEditingController emailController = TextEditingController();
  TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        backgroundColor: const Color(0xFF000000),
        body: SingleChildScrollView(
        child: LayoutBuilder(
            builder: (BuildContext ctx, BoxConstraints constraints) {
              if (constraints.maxWidth >= 1100) {
                return Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [ Color(0xFF1B0600), Color(0xFF000000)],
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
                            SizedBox(
                              height: 60,
                            ),
                            const DefaultTextStyle(
                        style: TextStyle(
                        color: Colors.white,
                            fontSize: 38,
                            fontFamily: 'Futura'
                        ),
                              child: Text("I'd love to hear from you", ),
                            ),
                            const SizedBox(
                              height: 120,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  // flex: 1,
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Image.asset(
                                      'asset/contact.png',
                                      height: 200,
                                      width: 200,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 30,
                                ),
                                Expanded(
                                  child: Column(
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
                                          height: 5
                                      ),
                                      TextField(
                                        controller: messageController,
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
                                              borderSide:  BorderSide(color: const Color(0xFFFFFFFF).withOpacity(0.40))
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                              borderSide:  BorderSide(color: const Color(0xFFFFFFFF).withOpacity(0.40))
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                              borderSide:  BorderSide(color: const Color(0xFFFFFFFF).withOpacity(0.40))
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
                                          child:AnimatedGradientButton("SEND MESSAGE", const Color(0xFFFF3D00), const Color(0xFF1B0600),(){
                                            if(emailController.text.isEmpty|| messageController.text.isEmpty){
                                              showSnackBar('Please fill all the fields!');
                                              return;
                                            }
                                            sendEmailJS(
                                                email: emailController.text,
                                                message: messageController.text);
                                          })
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),

                            Expanded(
                              child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text("Developed with ", style: GoogleFonts.zillaSlab(color: const Color(0xFFACACAC), fontSize: 14)),
                                      Image.asset('asset/heart.png',height: 14,width: 14,),
                                      Text(" by ", style: GoogleFonts.zillaSlab(color: const Color(0xFFACACAC), fontSize: 14)),
                                      Text(" Bhavya Tripathi ", style: GoogleFonts.zillaSlab(color: const Color(0xFFACACAC), fontSize: 14, fontWeight: FontWeight.bold)),

                                    ],
                                  )),
                            )
                          ],
                        ),
                      )),
                );
              }
              else {
                return Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [ Color(0xFF1B0600), Color(0xFF000000)],
                    ),
                  ),
                  height: 700,
                  child: Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        width:MediaQuery.of(context).size.width/1.5,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 30,
                            ),
                            const DefaultTextStyle(
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 38,
                                  fontFamily: 'Futura'
                              ),
                              child: Text("I'd love to hear from you", ),
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Image.asset(
                                'asset/contact.png',
                                height: 200,
                                width: 200,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Message", style: TextStyle(
                                    color: const Color(0xFFFFFFFF).withOpacity(0.56),
                                    fontSize: 16,
                                    fontFamily: 'Podkova'
                                )),
                                const SizedBox(
                                    height: 5
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
                                        borderSide:  BorderSide(color: const Color(0xFFFFFFFF).withOpacity(0.40))
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide:  BorderSide(color: const Color(0xFFFFFFFF).withOpacity(0.40))
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide:  BorderSide(color: const Color(0xFFFFFFFF).withOpacity(0.40))
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
                                  child: AnimatedGradientButton("SEND MESSAGE", const Color(0xFFFF3D00), const Color(0xFF1B0600),(){
                                    if(emailController.text.isEmpty|| messageController.text.isEmpty){
                                      showSnackBar('Please fill all the fields!');
                                      return;
                                    }
                                    sendEmailJS(
                                        email: emailController.text,
                                        message: messageController.text);
                                  }),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 50,
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
                                )),
                            const SizedBox(
                              height: 20,
                            )
                          ],
                        ),
                      )),
                );
              }
            }),
    ),
      );
  }

  Future sendEmailJS({
    required String email,
    required String message,
  }) async{
    final url = 'mailto:tripathii.bhavya@gmail.com?subject=${Uri.encodeFull(email)}&body=${Uri.encodeFull(message)}';
    if(await canLaunch(url)){
      await launch(url);
    }
    emailController.clear();
    messageController.clear();
    // const serviceId ='service_unxxgwh';
    // const templateId ='template_dyu3uzg';
    // const userId = 'ZMb0S0j0KoH7ftu5p';
    // final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
    // await http.post(
    //     url,
    //     headers: {
    //       'Content-Type': 'application/json'
    //     },
    //     body: jsonEncode({
    //       'service_id': serviceId,
    //       'template_id': templateId,
    //       'user_id': userId,
    //       'template_params': {
    //         'message':message,
    //         'user_email':email
    //       }
    //     })
    // ).then((value) {
    //   showSnackBar('Sent email successfully!');
    //   emailController.clear();
    //   messageController.clear();
    // });
  }

  void showSnackBar(String text){
    final snackBar = SnackBar(
      content: Text(
        text,
        style:  GoogleFonts.zillaSlab(color: Colors.white, fontSize: 18),
      ),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          )),
      backgroundColor: const Color(0xFFFF3D00),
    );
    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(snackBar);
  }

  Widget textField(String hint){
    return TextField(
      controller: emailController,
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
