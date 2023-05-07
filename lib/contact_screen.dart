import 'package:flutter/material.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  _ContactScreenState createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext ctx, BoxConstraints constraints) {
          if (constraints.maxWidth >= 1100) {
            return Container(
              color: Color(0xFF000000),
              height: 625,
              child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    width:MediaQuery.of(context).size.width/1.5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("I'd love to hear from you", style: TextStyle(
                            color: Colors.white,
                            fontSize: 38,
                            fontFamily: 'Futura'
                        )),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              // flex: 1,
                              child: Container(
                                // color: Colors.red,
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Image.asset(
                                    'asset/contact.png',
                                    height: 200,
                                    width: 200,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Expanded(
                              // flex: 2,
                              child: Container(
                                // color: Colors.purple,
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
                                              fontSize: 20,
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
                                              width: 15,
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
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )),
            );
          }
          else return Container(
            color: Color(0xFF000000),
            height: 850,
            child: Align(
                alignment: Alignment.center,
                child: Container(
                  width:MediaQuery.of(context).size.width/1.5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Text("I'd love to hear from you", style: TextStyle(
                          color: Colors.white,
                          fontSize: 38,
                          fontFamily: 'Futura'
                      )),
                      SizedBox(
                        height: 30,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Image.asset(
                          'asset/contact.png',
                          height: 200,
                          width: 200,
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Expanded(
                        // flex: 2,
                        child: Container(
                          // color: Colors.purple,
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
                                        fontSize: 19,
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
                        ),
                      )
                    ],
                  ),
                )),
          );
        });
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
