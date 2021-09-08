import 'package:flutter/material.dart';
import 'package:paracare/screens/patient_detail.dart';
import 'package:paracare/utils/size_config.dart';
import 'package:paracare/utils/style.dart';

import 'colors.dart';

Text greyText(String name) {
  return Text(
    name,
    style: TextStyle(color: darkGrey, fontSize: Media.text! * 1.8),
  );
}

Widget divider() {
  return Divider(
    height: 5,
    indent: 30,
    endIndent: 30,
    color: black,
  );
}

PreferredSizeWidget defaultAppBar() {
  return AppBar(
    leading: Icon(
      Icons.menu,
      color: black,
    ),
    centerTitle: true,
    title: Image.asset(
      "assets/logo.png",
      fit: BoxFit.fill,
      height: Media.image! * 13,
    ),
    backgroundColor: Colors.white,
    actions: <Widget>[
      IconButton(
        icon: Icon(
          Icons.search_rounded,
          size: Media.image! * 7,
          color: black,
        ),
        onPressed: () {},
      )
    ],
  );
}

Widget nameCard(var context) {
  return Padding(
    padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
    child: SizedBox(
      height: Media.height! * 22,
      width: Media.screenWidth,
      child: GestureDetector(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => PatientDetail()));
        },
        child: Card(
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: white,
          child: Padding(
            padding: EdgeInsets.fromLTRB(5, 4, 5, 5),
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "MOHAN KUMAR",
                        style: TextStyle(
                          color: blue,
                          fontSize: Media.text! * 2.5,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "ID - 10000000091",
                        style: TextStyle(
                          color: grey,
                          fontSize: Media.text! * 2.1,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Icon(Icons.more_vert),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        flex: 4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            greyText("Token"),
                            greyText("Gurandian"),
                            greyText("Gender"),
                            greyText("Phone"),
                          ],
                        ),
                      ),
                      xWidth1,
                      Expanded(
                        flex: 4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            greyText("--"),
                            greyText("Soham kumar"),
                            greyText("Male"),
                            greyText("9987675645"),
                          ],
                        ),
                      ),
                      xWidth05,
                      VerticalDivider(
                        width: 3,
                        color: darkGrey,
                        thickness: 2,
                      ),
                      xWidth05,
                      Expanded(
                        flex: 3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            greyText("Consult"),
                            greyText("last visit"),
                            greyText("Total visit"),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            greyText("Doctor"),
                            greyText("03-06-2019"),
                            greyText("1"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}

Widget btn(String text, color, tap) {
  return ElevatedButton(
    onPressed: tap,
    style: ButtonStyle(
        elevation: MaterialStateProperty.resolveWith((states) => 0),
        backgroundColor: MaterialStateProperty.all<Color>(color),
        shape: MaterialStateProperty.resolveWith((states) =>
            RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.all(Radius.circular(1.5 * Media.height!)))),
        enableFeedback: true),
    child: Padding(
      padding: EdgeInsets.symmetric(vertical: 1 * Media.height!),
      child: Text(text,
          style: TextStyle(
              fontSize: 2 * Media.text!,
              color: Colors.white,
              fontWeight: FontWeight.w600)),
    ),
  );
}

InputDecoration fieldDeco(String label) {
  return InputDecoration(
    isDense: true,
    fillColor: lightGrey.withOpacity(0.4),
    filled: true,
    labelText: label,
    labelStyle: labelStyle,
    focusedBorder: focusBorder,
    enabledBorder: enableBorder,
    contentPadding: fieldPadding,
    errorBorder: errorBorder,
    disabledBorder: disabledBorder,
    focusedErrorBorder: errorBorder,
    counterText: '',
  );
}

Text colorSmallText(String text, Color color) {
  return Text(
    text,
    style: TextStyle(
        color: color, fontSize: Media.text! * 2, fontWeight: FontWeight.bold),
  );
}

var yHeight05 = SizedBox(
  height: 0.5 * Media.height!,
);

var yHeight1 = SizedBox(
  height: 1 * Media.height!,
);
var yHeight2 = SizedBox(
  height: 2 * Media.height!,
);
var yHeight3 = SizedBox(
  height: 3 * Media.height!,
);
var yHeight4 = SizedBox(
  height: 4 * Media.height!,
);
var yHeight5 = SizedBox(
  height: 5 * Media.height!,
);
var yHeight6 = SizedBox(
  height: 6 * Media.height!,
);
var yHeight7 = SizedBox(
  height: 7 * Media.height!,
);
var yHeight8 = SizedBox(
  height: 8 * Media.height!,
);
var yHeight9 = SizedBox(
  height: 9 * Media.height!,
);
var yHeight10 = SizedBox(
  height: 10 * Media.height!,
);

// Spacing Widgets (Horizontal)
var xWidth05 = SizedBox(
  width: 0.5 * Media.height!,
);
var xWidth1 = SizedBox(
  width: 1 * Media.height!,
);
var xWidth2 = SizedBox(
  width: 2 * Media.height!,
);
var xWidth3 = SizedBox(
  width: 3 * Media.height!,
);
var xWidth4 = SizedBox(
  width: 4 * Media.height!,
);
var xWidth5 = SizedBox(
  width: 5 * Media.height!,
);
var xWidth6 = SizedBox(
  width: 6 * Media.height!,
);
var xWidth7 = SizedBox(
  width: 7 * Media.height!,
);
var xWidth8 = SizedBox(
  width: 8 * Media.height!,
);
var xWidth9 = SizedBox(
  width: 9 * Media.height!,
);
var xWidth10 = SizedBox(
  width: 10 * Media.height!,
);
