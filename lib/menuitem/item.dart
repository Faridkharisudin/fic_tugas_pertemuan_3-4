import 'package:flutter/material.dart';

class Item extends StatefulWidget {
  final String pictur, price, nameLabel, rate;
  const Item({
    Key? key,
    required this.pictur,
    required this.price,
    required this.nameLabel,
    required this.rate,
  }) : super(key: key);

  @override
  _ItemState createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.all(26),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        Container(
          width: 210.0,
          height: 140.0,
          margin: EdgeInsets.all(24),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            image: DecorationImage(
              image: AssetImage(widget.pictur),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(40, 40, 10, 10),
          width: 34.0,
          height: 34.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(
            Icons.favorite_border,
            color: Colors.red,
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(40, 170, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.nameLabel,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                widget.price,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(120, 190, 0, 0),
          child: Row(
            children: [
              Icon(
                Icons.star,
                color: Colors.yellow[800],
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                widget.rate,
                style: TextStyle(color: Colors.grey, fontSize: 14.0),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
