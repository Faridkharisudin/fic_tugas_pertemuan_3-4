import 'package:flutter/material.dart';
import 'package:slicingdesain/menuitem/item.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;

    final double itemHeight = (size.height - kToolbarHeight - 240) / 2;
    final double itemWidth = size.width / 2;

    return DefaultTabController(
        length: 5,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 120.0,
                title: const Text(
                  "Discover the most \nmodern furniture",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color(0xFF4A4543),
                    fontSize: 22.0,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 2.0,
                  ),
                ),
                backgroundColor: Colors.white,
                pinned: true,
                floating: true,
                bottom: TabBar(
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(40.0),
                    color: const Color(0xFF9A9390),
                  ),
                  labelColor: Colors.white,
                  unselectedLabelColor: const Color(0xFF4A4543),
                  isScrollable: true,
                  tabs: [
                    Tab(child: Text('All')),
                    Tab(child: Text('Living Room')),
                    Tab(child: Text('Bedroom')),
                    Tab(child: Text('Dinning Room')),
                    Tab(child: Text('Kitchen')),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: <Widget>[
              GridView.custom(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: (itemWidth / itemHeight)),
                childrenDelegate: SliverChildListDelegate(
                  [
                    Item(
                      pictur: 'assets/home/kursi1.png',
                      price: '\$170',
                      nameLabel: 'Stylist Chair',
                      rate: '4.8',
                    ),
                    Item(
                      pictur: 'assets/home/kursi2.png',
                      price: '\$75',
                      nameLabel: 'Modern Tables',
                      rate: '4.8',
                    ),
                    Item(
                      pictur: 'assets/home/kursi3.png',
                      price: '\$240',
                      nameLabel: 'Wooden Console',
                      rate: '4.8',
                    ),
                    Item(
                      pictur: 'assets/home/kursi4.png',
                      price: '\$210',
                      nameLabel: 'Brown Armchain',
                      rate: '4.8',
                    ),
                  ],
                ),
              ),
              Icon(Icons.directions_transit, size: 350),
              Icon(Icons.directions_car, size: 350),
              Icon(Icons.directions_bike, size: 350),
              Icon(Icons.directions_boat, size: 350),
            ],
          ),
        ),
      );
  }
}

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Text('page 2'),
    );
  }
}

class Page3 extends StatefulWidget {
  const Page3({ Key? key }) : super(key: key);

  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: Text('page 3'),
    );
  }
}
class Page4 extends StatefulWidget {
  const Page4({ Key? key }) : super(key: key);

  @override
  _Page4State createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple,
      child: Text('page 4'),
    );
  }
}
