import 'dart:ui';

import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {

  ScrollNotificationObserverState? _scrollNotificationObserver;
  bool _scrolledUnder = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _scrollNotificationObserver?.removeListener(_handleScrollNotification);
    _scrollNotificationObserver = ScrollNotificationObserver.of(context);
    _scrollNotificationObserver?.addListener(_handleScrollNotification);
  }

  @override
  void dispose() {
    if (_scrollNotificationObserver != null) {
      _scrollNotificationObserver!.removeListener(_handleScrollNotification);
      _scrollNotificationObserver = null;
    }
    super.dispose();
  }

  void _handleScrollNotification(ScrollNotification notification) {
    if (notification is ScrollUpdateNotification) {
      final bool oldScrolledUnder = _scrolledUnder;
      final ScrollMetrics metrics = notification.metrics;
      switch (metrics.axisDirection) {
        case AxisDirection.up:
        // Scroll view is reversed
          _scrolledUnder = metrics.extentAfter > 0;
          break;
        case AxisDirection.down:
          _scrolledUnder = metrics.extentBefore > 0;
          break;
        case AxisDirection.right:
        case AxisDirection.left:
        // Scrolled under is only supported in the vertical axis.
          _scrolledUnder = false;
          break;
      }

      if (_scrolledUnder != oldScrolledUnder) {
        setState(() {
          // React to a change in MaterialState.scrolledUnder
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {

    Widget appBarContent = LayoutBuilder(
        builder: (BuildContext ctx, BoxConstraints constraints) {
          if (constraints.maxWidth >= 500) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'asset/logo.png',
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("About",
                          style: TextStyle(
                              fontFamily: 'Podkova',
                              fontSize: 20,
                              color: Color(0xFFFFFFFF).withOpacity(0.7)
                          )
                      ),
                      SizedBox(
                        width: 80,
                      ),
                      Text("Work", style: TextStyle(
                          fontFamily: 'Podkova',
                          fontSize: 20,
                          color: Color(0xFFFFFFFF).withOpacity(0.7)
                      )),
                      SizedBox(
                        width: 80,
                      ),
                      Text("Blog", style: TextStyle(
                          fontFamily: 'Podkova',
                          fontSize: 20,
                          color: Color(0xFFFFFFFF).withOpacity(0.7)
                      )),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ConstrainedBox(
                    constraints: BoxConstraints.tightFor( height: 40),
                    child: ElevatedButton(onPressed: (){},
                        child: Text("Resume",
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Podkova',
                                color: Color(0xFFFFFFFF).withOpacity(0.7)
                            )
                        ),style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.resolveWith((states) {
                              return Color(0xFFFFFFFF).withOpacity(0.1);
                            }),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  //side: BorderSide(color: Colors.red)
                                )
                            )
                        )),
                  ),
                )
              ],
            );
          }
          else return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'asset/logo.png',
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ConstrainedBox(
                  constraints: BoxConstraints.tightFor( height: 40),
                  child: ElevatedButton(onPressed: (){},
                      child: Text("Resume",
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Podkova',
                              color: Color(0xFFFFFFFF).withOpacity(0.7)
                          )
                      ),style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.resolveWith((states) {
                            return Color(0xFFFFFFFF).withOpacity(0.1);
                          }),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                //side: BorderSide(color: Colors.red)
                              )
                          )
                      )),
                ),
              ),
              Icon(Icons.menu, color: Color(0xFFFFFFFF).withOpacity(0.7), size: 35,)
            ],
          );
        });
    appBarContent = Align(
      alignment: Alignment.center,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.all(Radius.circular(40))
        ),
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width/1.5,
        child: _scrolledUnder ? ClipRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: appBarContent,
          ),
        ) : appBarContent,
      ),
    );

    return appBarContent;
  }
}
