import 'package:flutter/material.dart';

class ContactScreenMobile extends StatefulWidget {
  const ContactScreenMobile({Key? key}) : super(key: key);

  @override
  _ContactScreenMobileState createState() => _ContactScreenMobileState();
}

class _ContactScreenMobileState extends State<ContactScreenMobile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF000000),
      height: 850,
      child: Padding(
        padding: const EdgeInsets.only(left: 22.0, right: 22),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Text("I'd love to hear from you", style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontFamily: 'Futura'
            )),
            SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                'asset/contact.png',
                height: 150,
                width: 150,
              ),
            ),
            SizedBox(
              width: 30,
            ),
            Expanded(
              // flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text("Let's connect",style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: 'Furura'
                        )),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Row(
                        children: [
                          Icon(Icons.mail_outline, color: Color(0xFFFFFFFF).withOpacity(0.56),size: 18,),
                          SizedBox(
                            width: 6,
                          ),
                          Text("tripathii.bhavya@gmail.com",
                              style: TextStyle(
                                  color: Color(0xFFFFFFFF).withOpacity(0.56),
                                  fontSize: 16,
                                  fontFamily: 'Podkova'
                              ))
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Full name", style: TextStyle(
                      color: Color(0xFFFFFFFF).withOpacity(0.56),
                      fontSize: 16,
                      fontFamily: 'Podkova'
                  )),
                  textField('Enter Your Name'),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Email address", style: TextStyle(
                      color: Color(0xFFFFFFFF).withOpacity(0.56),
                      fontSize: 16,
                      fontFamily: 'Podkova'
                  )),
                  textField('Enter Your email'),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Message", style: TextStyle(
                      color: Color(0xFFFFFFFF).withOpacity(0.56),
                      fontSize: 16,
                      fontFamily: 'Podkova'
                  )),
                  TextField(
                    maxLines: 5,
                    minLines: 5,
                    style: TextStyle(
                        color: Color(0xFFFFFFFF).withOpacity(0.56),
                        fontSize: 16,
                        fontFamily: 'Podkova'
                    ),
                    cursorColor: Color(0xFFFFFFFF).withOpacity(0.56),
                    decoration: InputDecoration(
                      isDense: true,
                      border: OutlineInputBorder(
                          borderSide: new BorderSide(color: Color(0xFFFFFFFF).withOpacity(0.40))
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: new BorderSide(color: Color(0xFFFFFFFF).withOpacity(0.40))
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: new BorderSide(color: Color(0xFFFFFFFF).withOpacity(0.40))
                      ),
                      hintStyle: TextStyle(
                          color: Color(0xFFFFFFFF).withOpacity(0.40),
                          fontSize: 16,
                          fontFamily: 'Podkova'
                      ),
                      hintText: 'Type here',
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ConstrainedBox(
                    constraints: BoxConstraints.tightFor( height: 40,width: double.infinity),
                    child: ElevatedButton(onPressed: (){},
                        child: Text("SEND MESSAGE",
                            style: TextStyle(
                                fontSize: 16,
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
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget textField(String hint){
    return TextField(
      style: TextStyle(
          color: Color(0xFFFFFFFF).withOpacity(0.56),
          fontSize: 16,
          fontFamily: 'Podkova'
      ),
      cursorColor: Color(0xFFFFFFFF).withOpacity(0.56),
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderSide: new BorderSide(color: Color(0xFFFFFFFF).withOpacity(0.40))
        ),
        enabledBorder: OutlineInputBorder(
            borderSide: new BorderSide(color: Color(0xFFFFFFFF).withOpacity(0.40))
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: new BorderSide(color: Color(0xFFFFFFFF).withOpacity(0.40))
        ),
        hintStyle: TextStyle(
            color: Color(0xFFFFFFFF).withOpacity(0.40),
            fontSize: 16,
            fontFamily: 'Podkova'
        ),
        hintText: hint,
      ),
    );
  }

}
