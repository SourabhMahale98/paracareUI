import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:paracare/utils/colors.dart';
import 'package:paracare/utils/size_config.dart';
import 'package:paracare/utils/widgets.dart';

class PatientDetail extends StatefulWidget {
  const PatientDetail({Key? key}) : super(key: key);

  @override
  _PatientDetailState createState() => _PatientDetailState();
}

class _PatientDetailState extends State<PatientDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: lightGreen,
        appBar: defaultAppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              yHeight6,
              Padding(
                padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                child: SizedBox(
                  height: Media.height! * 75,
                  width: Media.screenHeight,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => PatientDetail()));
                    },
                    child: Card(
                      elevation: 20,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      color: white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            "assets/login_icon.png",
                            fit: BoxFit.contain,
                            color: blue,
                          ),
                          yHeight2,
                          Text(
                            "MOHAN KUMAR",
                            style: TextStyle(
                              color: blue,
                              fontSize: Media.text! * 2.5,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          yHeight6,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              greyText("Patient id"),
                              greyText("10000000081"),
                            ],
                          ),
                          divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              greyText("Gender"),
                              greyText("Male"),
                            ],
                          ),
                          divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              greyText("Marital status"),
                              greyText("Married"),
                            ],
                          ),
                          divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              greyText("Phone"),
                              greyText("7689929231"),
                            ],
                          ),
                          divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              greyText("Email"),
                              greyText("sdjf@gmail.com"),
                            ],
                          ),
                          divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              greyText("Age"),
                              greyText("45"),
                            ],
                          ),
                          divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              greyText("Address"),
                              greyText("neharu road"),
                            ],
                          ),
                          divider(),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
