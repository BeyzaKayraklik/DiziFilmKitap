import 'package:flutter/material.dart';




class Background extends StatelessWidget {
  final Widget child;


  const Background({
    Key key, this.size, this.child,

  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: new BoxDecoration(color: Color(0xFFF5EBE9)),
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset("assets/images/üst.png",
              width: size.width*0.3,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset("assets/images/alt.png",
              width: size.width*0.4,),
          ),
          child,
        ],
      ),
    );
  }
}