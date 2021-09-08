import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:paracare/screens/main_screen.dart';
import 'package:paracare/utils/colors.dart';

enum MobileVerificationState {
  SHOW_MOBILE_FORM_STATE,
  SHOW_OTP_FORM_STATE,
}

class PhoneVerification extends StatefulWidget {
  const PhoneVerification({Key? key}) : super(key: key);

  @override
  _PhoneVerificationState createState() => _PhoneVerificationState();
}

class _PhoneVerificationState extends State<PhoneVerification> {
  MobileVerificationState currentState =
      MobileVerificationState.SHOW_MOBILE_FORM_STATE;
  final phoneController = TextEditingController();
  final otpController = TextEditingController();

  FirebaseAuth _auth = FirebaseAuth.instance;
  String? verificationId;
  bool loading = false;

  void signWithPhoneAuthCredential(
      PhoneAuthCredential phoneAuthCredential) async {
    setState(() {
      loading = true;
    });
    try {
      setState(() {
        loading = false;
      });
      final authCredential =
          await _auth.signInWithCredential(phoneAuthCredential);

      if (authCredential.user != null) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => MainScreen()));
      }
    } on FirebaseAuthException catch (e) {
      setState(() {
        loading = false;
      });
      _scaffoldMessengerKey.currentState!
          .showSnackBar(SnackBar(content: Text(e.message!)));
    }
  }

  Widget getMobileFormWidget(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Spacer(),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: TextField(
              controller: phoneController,
              decoration: InputDecoration(
                hintText: "Enter Phone Number",
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () async {
              setState(() {
                loading = true;
              });
              await _auth.verifyPhoneNumber(
                phoneNumber: phoneController.text,
                verificationCompleted: (phoneAuthCredential) async {
                  setState(() {
                    loading = false;
                  });
                  signWithPhoneAuthCredential(phoneAuthCredential);
                },
                verificationFailed: (verificationFailed) async {
                  setState(() {
                    loading = false;
                  });
                  _scaffoldMessengerKey.currentState!.showSnackBar(
                      SnackBar(content: Text(verificationFailed.message!)));
                },
                codeSent: (verificationId, codeSent) async {
                  setState(() {
                    currentState = MobileVerificationState.SHOW_OTP_FORM_STATE;
                    this.verificationId = verificationId;
                    loading = true;
                  });
                },
                codeAutoRetrievalTimeout: (codeAutoRetrievalTimeout) {},
              );
            },
            child: Text("Send OTP"),
          ),
          Spacer(),
        ],
      ),
    );
  }

  getOtpFormWidget(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Spacer(),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: TextField(
              controller: otpController,
              decoration: InputDecoration(
                hintText: "Enter OTP",
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () async {
              final phoneAuthCredential = PhoneAuthProvider.credential(
                  verificationId: verificationId!, smsCode: otpController.text);

              signWithPhoneAuthCredential(phoneAuthCredential);
            },
            child: Text("Verify"),
          ),
          Spacer(),
        ],
      ),
    );
  }

  final GlobalKey<ScaffoldMessengerState> _scaffoldMessengerKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldMessengerKey,
      body: loading
          ? Center(child: CircularProgressIndicator())
          : currentState == MobileVerificationState.SHOW_MOBILE_FORM_STATE
              ? getMobileFormWidget(context)
              : getOtpFormWidget(context),
    );
  }
}
