import 'package:flutter/material.dart';
import 'package:food_app/utils/constants.dart';

class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> with TickerProviderStateMixin {
  bool delivery = true;
  bool pickup = false;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 16.0),
                child: Center(
                  child: SizedBox(
                      child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Your Orders",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                    ),
                  )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Container(
                  height: size.height / 12,
                  decoration: BoxDecoration(
                      color: darkGreyColor.withAlpha(10),
                      borderRadius: BorderRadius.circular(50)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            delivery = true;
                            pickup = false;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: delivery ? primaryColor : null,
                              borderRadius: BorderRadius.circular(50)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 50.0, vertical: 10),
                            child: Text("Delivery",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: delivery ? whiteColor : blackColor,
                                  fontWeight: delivery ? FontWeight.bold : null,
                                )),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            pickup = true;
                            delivery = false;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: pickup ? primaryColor : null,
                              borderRadius: BorderRadius.circular(50)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 50.0, vertical: 10),
                            child: Text("Pick Up",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: pickup ? whiteColor : blackColor,
                                  fontWeight: pickup ? FontWeight.bold : null,
                                )),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const TabBar(
                tabs: [
                  Tab(
                    text: ("Upcoming"),
                  ),
                  Tab(
                    text: ("History"),
                  ),
                  Tab(
                    text: ("Refund"),
                  )
                ],
              ),
              Expanded(
                child: TabBarView(
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      Center(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "Orders not found",
                            style: TextStyle(fontSize: 18),
                          ),
                          Text(
                            "Orders will appears here.",
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      )),
                      Center(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "Orders not found",
                            style: TextStyle(fontSize: 18),
                          ),
                          Text(
                            "Orders will appears here.",
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      )),
                      Center(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "Orders not found",
                            style: TextStyle(fontSize: 18),
                          ),
                          Text(
                            "Orders will appears here.",
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      )),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
