import 'package:flutter/material.dart';
import 'package:slicingdesain/menuitem/item.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    final double itemHeight = (size.height - kToolbarHeight - 240) / 2;
    final double itemWidth = size.width / 2;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const IconButton(
          onPressed: null,
          icon: Icon(
            Icons.sort,
            size: 22.0,
            color: Color(0xFF4A4543),
          ),
        ),
        title: const Text(
          'Home',
          style: TextStyle(
            color: Color(0xFF4A4543),
            letterSpacing: 1.0,
            fontSize: 16.0,
          ),
        ),
        centerTitle: true,
        actions: const [
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.search,
              size: 22.0,
              color: Color(0xFF4A4543),
            ),
          ),
        ],
      ),
      body: DefaultTabController(
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
      ),
      bottomNavigationBar: Container(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.home_outlined),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shopping_cart_outlined),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.star_outline),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.person_outline),
            ),
          ],
        ),
      ),
    );
  }
}
