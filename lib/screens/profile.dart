import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class myProfile extends StatefulWidget {
  @override
  State<myProfile> createState() => _myProfileState();
}

class _myProfileState extends State<myProfile> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Container(
                //   height: 40,
                //   width: 60,
                //   child: MaterialButton(
                //     color: Colors.white,
                //     onPressed: () {
                //       Get.to(() => dashBoard());
                //     },
                //     shape: RoundedRectangleBorder(
                //       borderRadius: BorderRadius.circular(30.0),
                //     ),
                //     elevation: 5.0,
                //     child: Icon(
                //       Icons.menu_outlined,
                //       color: Colors.blue,
                //     ),
                //   ),
                // ),
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://media.istockphoto.com/photos/nice-businessman-with-a-kindly-face-is-smiling-studio-shot-of-fat-man-picture-id931765526?k=6&m=931765526&s=170667a&w=0&h=Wpr_VRx5Ad9TZsJxtHLmzN93mhpw6wQJK6QVrbvnSgE='),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ),
                // Container(
                //   height: 40,
                //   width: 60,
                //   child: MaterialButton(
                //     color: Colors.white,
                //     onPressed: () {
                //       Get.to(() => settingPage());
                //     },
                //     shape: RoundedRectangleBorder(
                //       borderRadius: BorderRadius.circular(30.0),
                //     ),
                //     elevation: 5.0,
                //     child: Icon(
                //       Icons.mode,
                //       color: Colors.blue,
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Richard Jefferson',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: Text(
                  'standard account',
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
              ),
              MaterialButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22.0),
                ),
                elevation: 8.0,
                child: Text('upgrade'),
                color: Colors.white,
                textColor: Colors.blue,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Divider(
            color: Colors.black, //color of divider
            height: 5, //height spacing of divider
            thickness: 2, //thickness of divier line
            indent: 25, //spacing at the start of divider
            endIndent: 25, //spacing at the end of divider
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: GridView.count(
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                primary: false,
                crossAxisCount: 2,
                children: [
                  cardmethod(
                      title: 'Savings',
                      image:
                          'https://th.bing.com/th/id/R.24b3df49de1aa97e660b350437e8988b?rik=tgwtU84HhFd2pg&pid=ImgRaw&r=0'),
                  cardmethod(
                      title: 'Insurence',
                      image:
                          'https://th.bing.com/th/id/OIP._2RmufX0Ot6iAagJcQImhQHaHS?pid=ImgDet&w=2400&h=2360&rs=1'),
                  cardmethod(
                      title: 'Credit',
                      image:
                          'https://th.bing.com/th/id/R.3d2cc5a40e68ff78b942b89f412726a9?rik=Z6lFVqibEDcS2g&riu=http%3a%2f%2fwww.clipartbest.com%2fcliparts%2fKTj%2fXgX%2fKTjXgXo7c.jpg&ehk=doVwVpYwXJPNM6Af2GU%2b7aZfzJdLgevyqEEU7Bk7F94%3d&risl=&pid=ImgRaw&r=0&sres=1&sresct=1'),
                  cardmethod(
                    title: 'Investment',
                    image:
                        'https://puassets.s3.amazonaws.com/wp-content/uploads/2015/11/increase-rate-house-property-investment-growth-success-interest-cost.jpg',
                  ),
                  cardmethod(
                      title: 'Savings',
                      image:
                          'https://th.bing.com/th/id/R.24b3df49de1aa97e660b350437e8988b?rik=tgwtU84HhFd2pg&pid=ImgRaw&r=0'),
                  cardmethod(
                      title: 'Insurence',
                      image:
                          'https://th.bing.com/th/id/OIP._2RmufX0Ot6iAagJcQImhQHaHS?pid=ImgDet&w=2400&h=2360&rs=1'),
                  cardmethod(
                      title: 'Credit',
                      image:
                          'https://th.bing.com/th/id/R.3d2cc5a40e68ff78b942b89f412726a9?rik=Z6lFVqibEDcS2g&riu=http%3a%2f%2fwww.clipartbest.com%2fcliparts%2fKTj%2fXgX%2fKTjXgXo7c.jpg&ehk=doVwVpYwXJPNM6Af2GU%2b7aZfzJdLgevyqEEU7Bk7F94%3d&risl=&pid=ImgRaw&r=0&sres=1&sresct=1'),
                  cardmethod(
                    title: 'Investment',
                    image:
                        'https://puassets.s3.amazonaws.com/wp-content/uploads/2015/11/increase-rate-house-property-investment-growth-success-interest-cost.jpg',
                  ),
                ]),
          )),
        ],
      ),
      // bottomNavigationBar: BottomNavyBar(
      //   selectedIndex: currentIndex,
      //   showElevation: true,
      //   itemCornerRadius: 15,
      //   curve: Curves.easeIn,
      //   onItemSelected: (index) => setState(() {
      //     currentIndex = index;
      //   }),
      //   items: [
      //     BottomNavyBarItem(
      //       icon: Icon(Icons.apps),
      //       title: Text('Home'),
      //       activeColor: Colors.red,
      //       textAlign: TextAlign.center,
      //     ),
      //     BottomNavyBarItem(
      //       icon: Icon(Icons.people),
      //       title: Text('Users'),
      //       activeColor: Colors.purpleAccent,
      //       textAlign: TextAlign.center,
      //     ),
      //     BottomNavyBarItem(
      //       icon: Icon(Icons.notifications),
      //       title: Text('Notifications'),
      //       activeColor: Colors.pink,
      //       textAlign: TextAlign.center,
      //     ),
      //     BottomNavyBarItem(
      //       icon: Icon(Icons.settings),
      //       title: Text('Settings'),
      //       activeColor: Colors.blue,
      //       textAlign: TextAlign.center,
      //     ),
      //   ],
      // ),
    ));
  }

  Card cardmethod({
    required String title,
    required String image,
  }) {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
        elevation: 5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              image,
              height: 128,
            ),
            Text(
              title,
              style: TextStyle(fontSize: 20),
            ),
          ],
        ));
  }
}
