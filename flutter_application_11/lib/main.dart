import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: EasyPaisaHome(),
    );
  }
}

class EasyPaisaHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          "easypaisa",
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // User Card Section
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "KALEEM ULLAH",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "03013860164",
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                    SizedBox(height: 8),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          shape: StadiumBorder()),
                      child: Text("Sign In"),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),

              // Main Services Section
              GridView.count(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  buildServiceIcon(Icons.send, "Send Money"),
                  buildServiceIcon(Icons.receipt, "Bill Payment"),
                  buildServiceIcon(Icons.phone_android, "Mobile Packages"),
                ],
              ),

              SizedBox(height: 20),

              // More with Easypaisa Section
              Text(
                "More with easypaisa",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(height: 10),
              GridView.count(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 4,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  buildServiceIcon(Icons.account_balance_wallet, "Easypay"),
                  buildServiceIcon(Icons.attach_money, "Easycash Loan"),
                  buildServiceIcon(Icons.savings, "Savings Pocket"),
                  buildServiceIcon(Icons.person_add, "Invite & Earn"),
                  buildServiceIcon(Icons.public, "Remittance"),
                  buildServiceIcon(Icons.apps, "Mini App"),
                  buildServiceIcon(Icons.savings_outlined, "Savings"),
                  buildServiceIcon(Icons.shopping_cart, "Buy Now Pay Later"),
                  buildServiceIcon(Icons.shield, "Insurance"),
                  buildServiceIcon(Icons.local_offer, "M-Tag"),
                  buildServiceIcon(Icons.games, "Rs.1 Game"),
                  buildServiceIcon(Icons.more_horiz, "See All"),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.green,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: "Cash Points",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_offer),
            label: "Promotions",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "My Account",
          ),
        ],
      ),
    );
  }

  Widget buildServiceIcon(IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.green[100],
          child: Icon(icon, size: 30, color: Colors.green),
        ),
        SizedBox(height: 5),
        Text(
          label,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 12),
        ),
      ],
    );
  }
}
