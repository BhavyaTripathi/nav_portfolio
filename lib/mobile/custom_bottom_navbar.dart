import 'dart:ui';

import 'package:flutter/material.dart';

class CustomBottomNavbar extends StatefulWidget {
  const CustomBottomNavbar({Key? key}) : super(key: key);

  @override
  _CustomBottomNavbarState createState() => _CustomBottomNavbarState();
}

class _CustomBottomNavbarState extends State<CustomBottomNavbar> {

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

    Widget appBarContent = Container(
      height: 70,
      color: Color(0xFF000000).withOpacity(0.05),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("About",
              style: TextStyle(
                  fontFamily: 'Podkova',
                  fontSize: 20,
                  color: Color(0xFFFFFFFF).withOpacity(0.7)
              )
          ),
          Text("Work", style: TextStyle(
              fontFamily: 'Podkova',
              fontSize: 20,
              color: Color(0xFFFFFFFF).withOpacity(0.7)
          )),
          Text("Blog", style: TextStyle(
              fontFamily: 'Podkova',
              fontSize: 20,
              color: Color(0xFFFFFFFF).withOpacity(0.7)
          )),
        ],
      ),
    );
    appBarContent = Container(
      width: MediaQuery.of(context).size.width/1.5,
      child: _scrolledUnder ? ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: appBarContent,
        ),
      ) : appBarContent,
    );

    return appBarContent;
  }
}
