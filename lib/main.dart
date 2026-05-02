// NayaPay App Clone
import 'package:flutter/material.dart'; 
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(), 
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen ({super.key});
  @override
  State <HomeScreen> createState () => _HomeScreenState ();
}

class _HomeScreenState extends State <HomeScreen> {
  TextEditingController searchBar = TextEditingController();
  @override
  Widget build (BuildContext context) {
    return Scaffold (
      backgroundColor: const Color.fromRGBO(245, 245, 245, 1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            children: [
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Profile Logo
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: CircleAvatar(
                      backgroundColor: Colors.deepPurple,
                      child: Text(
                        "NS",
                        style: TextStyle(
                          color: Colors.white
                        ),
                      )
                    ),
                  ),
          
                  SizedBox(width: 5,),
          
                  // Search Bar
                  Expanded(
                    child: SizedBox(
                      height: 40,
                      child: TextField(
                        controller: searchBar,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(0),
                          prefixIcon: Icon(Icons.search),
                          hintText: "Find people and merchants",
                          hintStyle: TextStyle(fontSize: 12),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.white)
                          ),
                          // enabledBorder: OutlineInputBorder()
                        ),
                      ),
                    ),
                  ),
          
                  SizedBox(width: 5,),
          
                  // Qr Code Icon
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(Icons.qr_code_scanner_rounded, color: Colors.black,),
                  ),
          
                  SizedBox(width: 5,),
          
                  // Notifications Icon
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(Icons.notifications, color: Colors.black,),
                    ),
                  )
                ],
              ),
          
              SizedBox(height: 13,),
          
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text (
                    "Hi",
                    style: TextStyle(
                      fontSize: 20
                    ),
                  ),
          
                  SizedBox(width: 5,),
          
                  Text (
                    "Najam",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                  ),
          
                  SizedBox(width: 5,),
          
                  Image.asset("assets/images/Waving-Hand.png", height: 25,)
                ],
              ),
          
              SizedBox(height: 15,),
          
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Rs. 1,000",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                    ),
                  ),
          
                  SizedBox(width: 5,),
          
                  Icon(Icons.visibility_off, color: Colors.grey,)
                ],
              ),
          
              SizedBox(height: 5,),
          
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.refresh, color: Colors.grey,),
          
                  SizedBox(width: 3,),
          
                  Text(
                    "Updated moments ago",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                  )
                ],
              ),
          
              SizedBox(height: 30,),
          
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Icon(Icons.add),
          
                      SizedBox(height: 5,),
          
                      Text(
                        "Add Money"
                      )
                    ],
                  ),
          
                  Column(
                    children: [
                      Icon(Icons.arrow_forward),
                      
                      SizedBox(height: 5,),
          
                      Text(
                        "Send Money"
                      )
                    ],
                  ),
          
                  Column(
                    children: [
                      Icon(Icons.more_horiz),
          
                      SizedBox(height: 5,),
                      
                      Text(
                        "More"
                      )
                    ],
                  )
                ],
              ),
          
              SizedBox(height: 20,),

              // Outer Container
              Expanded(
                child: Container(
                  height: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(35), topRight: Radius.circular(35)),
                    color: Colors.white
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          // Inner Container
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                              child: Container(
                                height: 150,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: const Color.fromARGB(255, 228, 65, 0),
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 40, left: 30),
                                          child: Text(
                                            "You're here!",
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),

                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 2, left: 30),
                                          child: Text(
                                            "Let's make money things happen.",
                                            style: TextStyle(
                                              color: Colors.white
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),

                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 2, left: 30),
                                          child: Text(
                                            "You know you want to.",
                                            style: TextStyle(
                                              color: Colors.white
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: 120,
                              width: 110,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.grey.shade100
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.qr_code, color: Colors.red,),

                                  SizedBox(height: 8,),

                                  Text(
                                    "QuickPay"
                                  )
                                ],
                              ),
                            ),

                            Container(
                              height: 120,
                              width: 110,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.grey.shade100
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.blinds_closed, color: Colors.red,),

                                  SizedBox(height: 8,),

                                  Text(
                                    "Bills"
                                  )
                                ],
                              ),
                            ),

                            Container(
                              height: 120,
                              width: 110,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.grey.shade100
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.house, color: Colors.red),
                                  
                                  SizedBox(height: 8,),

                                  Text(
                                    "merchants"
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: 120,
                              width: 110,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.grey.shade100
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.mobile_friendly_outlined, color: Colors.red),
                                  
                                  SizedBox(height: 8,),

                                  Text(
                                    "Mobile Top-Up"
                                  )
                                ],
                              ),
                            ),

                            Container(
                              height: 120,
                              width: 110,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.grey.shade100
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.blinds_closed_sharp, color: Colors.red),
                                  
                                  SizedBox(height: 8,),

                                  Text(
                                    "Bill Split"
                                  )
                                ],
                              ),
                            ),

                            Container(
                              height: 120,
                              width: 110,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.grey.shade100
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.card_giftcard, color: Colors.red),
                                  
                                  SizedBox(height: 8,),

                                  Text(
                                    "Gift Envelope"
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),

      bottomNavigationBar: SafeArea(
        child: SizedBox(
          height: 62,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset("assets/images/NayaPay-Logo.png", height: 30,),

              Icon(Icons.chat_bubble, color: Colors.grey, size: 30,),

              Icon(Icons.credit_card, color: Colors.grey, size: 30,),

              Icon(Icons.compare_arrows, color: Colors.grey, size: 30,)
            ],
          ),
        )
      ),
    );
  }
}