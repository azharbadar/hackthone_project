import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  final Color bgcolor;
  final String pro;
  final String pname;
  final String price;
  final String plantimg;

  const Cart(
      {super.key,
      required this.bgcolor,
      required this.pro,
      required this.pname,
      required this.price,
      required this.plantimg});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('rec.png', color: widget.bgcolor),
        Positioned(
          left: 0,
          child: Image.asset('recp1.png')),
        Positioned(
          left: 45,
          child: Image.asset('recp2.png')),
        Positioned(
          top: 0,
          right: -17,
          child: InkWell(
            onTap: () {
              
            },
            child: Container(
                width: 200,
                height: 180,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(widget.plantimg)))),
          ),
        ),
        Positioned(
          top: 25,
          left: 125,
          child: Image.asset('sage.png'),
        ),
        Positioned(
            top: 24,
            left: 24,
            child: Text( widget.pro,
              style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
            )),
        Positioned(
            top: 55,
            left: 24,
            child: Text(
              widget.pname,
              style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 32),
            )),
        Positioned(
          bottom: 24,
          left: 150,
          child: InkWell(
            child: Container(
                width: 56,
                height: 56,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('cart1.png')))),
          ),
        ),
     const   Positioned(
          top: 114,
          left: 107,
          child:  InkWell(
            child: Icon(
                Icons.favorite,
                size: 24,
              ),
          ),
        ),
        Positioned(
            top: 119,
            left: 24,
            child: Text(
              widget.price,
              style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
            )),
      ],
    );
  }
}
