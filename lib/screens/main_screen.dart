import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:paracare/screens/phone_veri.dart';
import 'package:paracare/utils/colors.dart';
import 'package:paracare/utils/size_config.dart';
import 'package:paracare/utils/widgets.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await _auth.signOut();
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => PhoneVerification()));
        },
        child: Icon(Icons.logout),
      ),
      backgroundColor: lightGreen,
      appBar: defaultAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 15, top: 10, bottom: 10),
            child: Text(
              "OPD Patient",
              style: TextStyle(
                  color: grey,
                  shadows: [
                    Shadow(
                      color: black,
                      offset: Offset(1.0, 1.0),
                      blurRadius: 3.0,
                    )
                  ],
                  fontWeight: FontWeight.bold,
                  fontSize: Media.text! * 3.5),
            ),
          ),
          yHeight2,
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, int i) {
                return nameCard(context);
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: ConvexAppBar(
        style: TabStyle.react,
        backgroundColor: blue,
        items: [
          TabItem(icon: Image.asset("assets/home.png", color: white)),
          TabItem(icon: Image.asset("assets/add.png", color: white)),
          TabItem(icon: Image.asset("assets/patient.png", color: white))
        ],
        initialActiveIndex: 0,
        onTap: (int i) => print('click index=$i'),
      ),
    );
  }
}
