import 'package:billing_app/res/components/MyBox.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final PageController _pageController = PageController(initialPage: 0);

  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> countries = [
    "Bills",
    "Disconnect",
    "Transfer",
    "Services",
    "Complain",
    "Update",
    "Connection",
    "Outage",
  ];
  List menuList = [
    _MenuItem(Icons.verified_user, 'My Profile'),
    _MenuItem(Icons.autorenew, 'Book a Cab'),
    _MenuItem(Icons.ac_unit, 'Booking Schedule'),
    _MenuItem(Icons.center_focus_strong, 'Track Your Cab'),
    _MenuItem(Icons.question_answer, 'Help & Feedback'),
    _MenuItem(Icons.phone, 'Call to Transport'),
    _MenuItem(Icons.verified_user, 'My Profile'),
    _MenuItem(Icons.autorenew, 'Book a Cab'),
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.indigo,
          leading: Icon(Icons.menu),
          actions: [
            Icon(Icons.person),
            SizedBox(
              width: 20,
            ),
            Icon(Icons.notifications_none),
          ],
        ),
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.indigo,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 40),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      child: Image.network(
                        'https://images-eu.ssl-images-amazon.com/images/G/31/img2021/Vday/bwl/English.jpg',
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'Hello ',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w400),
                        children: const <TextSpan>[
                          TextSpan(
                            text: '\n',
                          ),
                          TextSpan(
                            text: 'THOMAS',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Spacer(),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20))),
                height: MediaQuery.of(context).size.height * 0.6,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 3,
                      width: 70,
                      color: Colors.black,
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Quicks Action',
                          style: TextStyle(
                              color: Colors.indigo,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      height: 180,
                      // color: Colors.orange,
                      child: PageView.builder(
                          itemCount: 2,
                          itemBuilder: (context, index) {
                            return GridView.builder(
                                itemCount: menuList.length,
                                gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 4,
                                ),
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Center(
                                          child: Card(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                BorderRadius.circular(100.0)),
                                            elevation: 3,
                                            child: Padding(
                                              padding: const EdgeInsets.all(10.0),
                                              child: Icon(
                                                menuList[index].icon,
                                                color: Colors.amber,
                                              ),
                                            ),
                                          ),
                                        ),
                                        // Image.network(iconImages[index]),
                                        Text(
                                          countries[index],
                                          style: TextStyle(fontSize: 12),
                                        ),
                                      ],
                                    ),
                                  );
                                });
                          }),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Text(
                            'GAS',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            '|',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            'SA1234567',
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Spacer(),
                          TextButton(
                              child: Text("Last Month".toUpperCase(),
                                  style: TextStyle(fontSize: 12)),
                              style: ButtonStyle(
                                  padding: MaterialStateProperty.all<EdgeInsets>(
                                      EdgeInsets.all(8)),
                                  foregroundColor:
                                  MaterialStateProperty.all<Color>(
                                      Colors.black),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(12),
                                          side: BorderSide(
                                              color: Colors.grey.shade500)))),
                              onPressed: () => null),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: height * .1,
                        child: Card(
                          child: ListTile(
                            leading: CircleAvatar(),
                            title: Text(
                              'Bills',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey.shade400,
                              ),
                            ),
                            trailing: Text(
                              '24',
                              style: TextStyle(color: Colors.orange),
                            ),
                            subtitle: Text(
                              '20 Jan 2020',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey.shade400,
                              ),
                            ),
                            selected: true,
                          ),
                        ),
                      ),
                    ),
                    //Bottom Navigation Bar
                  ],
                ),
              ),
            ],
          ),
        ),
    );
  }
}

class _MenuItem {
  final IconData icon;
  final String title;

  _MenuItem(this.icon, this.title);
}
