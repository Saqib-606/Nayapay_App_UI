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
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: Column(
            children: [
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Profile Logo
                  CircleAvatar(
                    backgroundColor: Colors.deepPurple,
                    child: Text(
                      "NS",
                      style: TextStyle(
                        color: Colors.white
                      ),
                    )
                  ),

                  SizedBox(width: 10,),

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
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(Icons.notifications, color: Colors.black,),
                  )
                ],
              ),

              SizedBox(height: 50,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text (
                    "Hi"
                  ),

                  SizedBox(width: 5,),

                  Text (
                    "Najam",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold
                    ),
                  ),

                  SizedBox(width: 5,),

                  Icon(Icons.celebration_sharp)
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

                  Icon(Icons.hide_image)
                ],
              ),

              SizedBox(height: 5,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.refresh),

                  SizedBox(width: 3,),

                  Text(
                    "Updated moments ago"
                  )
                ],
              ),

              SizedBox(height: 30,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
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
            ],
          ),
        ),
      ) 
    );
  }
}