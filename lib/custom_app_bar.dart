import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portfolio_flutter_web/animated_gradient_button.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({Key? key, required this.callBack}) : super(key: key);
  final Function(String) callBack;

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {

  ScrollNotificationObserverState? _scrollNotificationObserver;
  bool _scrolledUnder = false;
  bool hoverOne = false;
  bool hoverTwo = false;
  bool hoverThree = false;

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
          if (constraints.maxWidth >= 550) {
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
                      MouseRegion(
                        onEnter: (_){
                          setState(() {
                            hoverOne = true;
                          });
                        },
                        onExit: (_){
                          setState(() {
                            hoverOne = false;
                          });
                        },
                        child: InkWell(
                          onTap:(){
                            widget.callBack("About");
                          },
                          child: Text("About",
                              style: TextStyle(
                                  fontFamily: 'Podkova',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: hoverOne ? const Color(0xFFFF3D00)  :  const Color(0xFFFFFFFF).withOpacity(0.7)
                              )
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 80,
                      ),
                      MouseRegion(
                        onEnter: (_){
                          setState(() {
                            hoverTwo = true;
                          });
                        },
                        onExit: (_){
                          setState(() {
                            hoverTwo = false;
                          });
                        },
                        child: InkWell(
                          onTap:(){
                            widget.callBack("Work");
                          },
                          child: Text("Work", style: TextStyle(
                              fontFamily: 'Podkova',
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: hoverTwo ? const Color(0xFFFF3D00)  :  const Color(0xFFFFFFFF).withOpacity(0.7)
                          )),
                        ),
                      ),
                      const SizedBox(
                        width: 80,
                      ),
                      MouseRegion(
                        onEnter: (_){
                          setState(() {
                            hoverThree = true;
                          });
                        },
                        onExit: (_){
                          setState(() {
                            hoverThree = false;
                          });
                        },
                        child: InkWell(
                          onTap:(){
                            widget.callBack("Blog");
                          },
                          child: Text("Blog", style: TextStyle(
                              fontFamily: 'Podkova',
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: hoverThree ? const Color(0xFFFF3D00)  : const Color(0xFFFFFFFF).withOpacity(0.7)
                          )),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: AnimatedGradientButton("RESUME", const Color(0xFFFFFFFF).withOpacity(0.1), const Color(0xFFFF3D00),(){})
                )
              ],
            );
          }
          else {
            return Row(
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
                  child: AnimatedGradientButton("RESUME", const Color(0xFFFFFFFF).withOpacity(0.1), const Color(0xFFFF3D00),(){}),
                ),
              ],
            );
          }
        });
    return Align(
      alignment: Alignment.center,
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.all(Radius.circular(40))
        ),
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width/1.5,
        child: _scrolledUnder ? ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(40)),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: appBarContent,
          ),
        ) : appBarContent,
      ),
    );
  }
}
