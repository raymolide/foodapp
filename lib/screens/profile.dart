import 'package:flutter/material.dart';
import 'package:food_app/utils/constants.dart';
import 'package:food_app/widgets/seeall.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            SizedBox(
              height: size.height * .15,
              child: Container(
                color: primaryColor,
                child: Center(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: whiteColor,
                      child: Icon(
                        Icons.person,
                        size: 38,
                        color: primaryColor,
                      ),
                    ),
                    trailing: Icon(
                      Icons.edit,
                      size: 24,
                      color: whiteColor,
                    ),
                    title: Text(
                      'Raimundo Molide',
                      style: TextStyle(
                          fontSize: 20,
                          color: whiteColor,
                          fontWeight: FontWeight.w700),
                    ),
                    subtitle: Text(
                      'raymolide@gmail.com',
                      style: TextStyle(
                          fontSize: 16,
                          color: whiteColor,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height * .70,
              child: ListView(
                children: [
                  const SeeAll(left: 'Account', right: '', bold: false),
                  items(Icons.person, 'Profile Information',
                      'Change your account information'),
                  items(Icons.location_pin, 'Delivery Address',
                      'Add or remove your address locations'),
                  items(Icons.favorite, 'Wishlist',
                      'Add or remove your favorites products'),
                  items(Icons.notifications_rounded, 'Notification',
                      'Get updates of letest actions'),
                  items(Icons.settings, 'Settings',
                      'Update your settings, change password, etc.'),
                  const SeeAll(left: 'General', right: '', bold: false),
                  items(Icons.star, 'Rate Us', 'Rate us on our playstore'),
                  items(Icons.error, 'Help & Support',
                      'Get help when you need it'),
                  items(Icons.exit_to_app, 'Logout',
                      'Add or remove your favorites products'),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                    child: Text(
                      'Delete my account',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.red,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                ],
              ),
            )
          ],
        )),
      ),
    );
  }

  Widget items(IconData icon, String title, String subtitle) {
    return Row(
      children: [
        Container(
          width: 50,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              icon,
              size: 28,
              color: darkGreyColor,
            ),
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text(
                              title,
                              style: TextStyle(
                                  fontSize: 16,
                                  color: darkGreyColor,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text(
                              subtitle,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 14,
                                  color: darkGreyColor,
                                  fontWeight: FontWeight.w300),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward_ios_sharp,
                          size: 18,
                          color: darkGreyColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Divider(
                height: .5,
                color: darkGreyColor,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget items2(IconData icon, String title, String subtitle) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(2.0),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  icon,
                  size: 28,
                  color: darkGreyColor,
                ),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.red,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              title,
                              style: TextStyle(
                                  fontSize: 16,
                                  color: darkGreyColor,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              subtitle,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 14,
                                  color: darkGreyColor,
                                  fontWeight: FontWeight.w300),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.blue,
                    child: Expanded(
                      flex: 3,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_forward_ios_sharp,
                              size: 18,
                              color: darkGreyColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Divider(
                height: .5,
                color: darkGreyColor,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
