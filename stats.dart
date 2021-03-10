import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Stats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Color(0xff4B4B87),
            ),
            onPressed: () {},
          ),
          title: Text(
            "STATS",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Color(0xff4B4B87),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 1,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          unselectedItemColor: Color(0xffA3A3CC),
          unselectedIconTheme: IconThemeData(
              color: Color(0xffA3A3CC)
          ),
          selectedItemColor: Color(0xff6161A8),
          selectedIconTheme: IconThemeData(
            color: Color(0xff484884),
          ),
          selectedLabelStyle: TextStyle(
            color: Color(0xff6161A8),
          ),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.person,color: Colors.indigo),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag,color: Colors.indigo),
              label: 'Stats',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.star,color: Colors.indigo),
              label: 'rewards',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.filter_center_focus,color: Colors.indigo),
              label: 'goal',
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: Color(0xff4B4B87).withOpacity(.2),
                ),
                child: TabBar(
                  unselectedLabelColor: Color(0xff4B4B87),
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xff4B4B87)),
                  tabs: [
                    Tab(text: "Day"),
                    Tab(text: "Weak"),
                    Tab(text: "Month"),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  children: [
                    buildGridCard(
                      title: "Heart Rate",
                      color: Color(0xffFF6968),
                      icon: 'images/heart.svg',
                      dis: '80 - 20\nhealthy',
                      lable1: '120 ',
                      lable2: 'bpm',
                      ancColor: Colors.red[200],
                    ),
                    buildGridCard(
                      title: "Sleep",
                      color: Color(0xff7A54FF),
                      // icon: 'images/moon.svg',
                      icon: Icon( Icons.hotel_sharp,),
                      dis: '80 - 20\nhealthy',
                      lable1: '8 h ',
                      lable2: '42 m',
                      ancColor: Color(0xffBFADFF),
                    ),
                    buildGridCard(
                      title: "Energy Burn",
                      color: Color(0xffFF8F61),
                      icon: 'images/fire.svg',
                      // icon: Icons.local_fire_department_rounded,
                      dis: '80 - 20\nhealthy',
                      lable1: '582 ',
                      lable2: 'kcal',
                      ancColor: Color(0xffFFC5AD),
                    ),
                    buildGridCard(
                      title: "Steps",
                      color: Color(0xff2AC3FF),
                      icon: 'images/climb.svg',
                      dis: 'Daily Goal\n25,000',
                      lable1: '16741',
                      lable2: '',
                      ancColor: Color(0xffADE8FF),
                    ),
                    buildGridCard(
                      title: "Running",
                      color: Color(0xff2AC3FF),
                      // icon: 'icons/running.svg',
                      dis: 'Daily Goal\n10km',
                      lable1: '5,3',
                      lable2: 'km',
                      ancColor: Color(0xffADE8FF),
                    ),
                    buildGridCard(
                      title: "Cycling",
                      color: Color(0xff96DA45),
                      // icon: 'icons/cycling.svg',
                      dis: 'Daily Goal\n20km',
                      lable1: '25 ',
                      lable2: 'km',
                      ancColor: Color(0xffD8F2BB),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildGridCard({
    String title,
    var icon,
    String lable1,
    String lable2,
    String dis,
    Color ancColor,
    Color color,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(13),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                    color: Colors.white60,
                  ),
                ),
                SizedBox(height: 25),
                Row(
                  children: [
                    Text(
                      lable1,
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      lable2,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      dis,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white54,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: -8,
            right: -3,
            child: CircleAvatar(
              radius: 27,
              backgroundColor: ancColor,
              child: Icon(
                Icons.favorite_outlined,
                color: Colors.white,
              ),
              // child: SvgPicture.asset(
              //   icon,
              //   height: 30,
              //   width: 30,
              //   color: Colors.white54,
              // ),
            ),
          )
        ],
      ),
    );
  }
}