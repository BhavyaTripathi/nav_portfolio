import 'package:flutter/material.dart';

class AnimatedGradientButton extends StatefulWidget {
  const AnimatedGradientButton(this.text, this.bgColor, this.hoverColor, this.onPressed, {Key? key}) : super(key: key);

  final String text;
  final Color hoverColor;
  final Color bgColor;
  final Function onPressed;
  @override
  State<AnimatedGradientButton> createState() => _AnimatedGradientButtonState();
}

class _AnimatedGradientButtonState extends State<AnimatedGradientButton> {
  GlobalKey key = GlobalKey();
  Size buttonSize = Size.zero;
  Offset buttonCenter = Offset.zero;
  double distanceToCenter =0;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      setState(() {
        final box = key.currentContext!.findRenderObject() as RenderBox;
        buttonSize = box.size;
        buttonCenter = box.size.center(Offset.zero);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        widget.onPressed();
      },
      child: MouseRegion(
        onExit: (event){
          setState(() {
            distanceToCenter = 0;
          });
        },
        onHover: (event){
          final hoverOffset = event.localPosition;
          final widthDistance = (buttonCenter.dx - hoverOffset.dx).abs();
          final centerPercent = (widthDistance - buttonCenter.dx).abs() / buttonCenter.dx;
          setState(() {
            distanceToCenter = centerPercent * buttonSize.width /20;
          });
        },
        child: Container(
          key: key,
          width: 150,
          height: 40,
          decoration: BoxDecoration(
              border: Border.all(
                  color: widget.bgColor
              ),
              borderRadius: BorderRadius.circular(75),
              boxShadow: [
                BoxShadow(
                    color: widget.bgColor,
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: const Offset(0,1)
                )
              ],
              gradient: RadialGradient(
                  colors: [
                    widget.hoverColor.withOpacity(0.81),
                    widget.hoverColor.withOpacity(0.71),
                    widget.hoverColor.withOpacity(0.61)
                  ],
                  radius: 0,
                  center: AlignmentDirectional.centerStart,
                  focalRadius: distanceToCenter,
                  focal: Alignment.centerLeft,
                  tileMode: TileMode.decal
              )
          ),
          child: Center(
            child: Text(widget.text,
                style: const TextStyle(
                    fontSize: 16,
                    fontFamily: 'FuturaBold',
                    letterSpacing: 2,
                    color: Colors.white
                )
            ),
          ),
        ),
      ),
    );
  }
}
