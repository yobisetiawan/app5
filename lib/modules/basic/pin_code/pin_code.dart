import 'dart:async';

import 'package:app5/components/Button/yb_btn.dart';
import 'package:app5/components/Text/yb_text.dart';
import 'package:flutter/material.dart';

import 'package:pin_code_fields/pin_code_fields.dart';

class Constants {
  static const Color primaryColor = Color(0xffFBFBFB);
  static const String otpGifImage = "assets/otp.gif";
}

class PinCodeVerificationScreen extends StatefulWidget {
  const PinCodeVerificationScreen({
    Key? key,
  }) : super(key: key);

  @override
  PinCodeVerificationScreenState createState() =>
      PinCodeVerificationScreenState();
}

class PinCodeVerificationScreenState extends State<PinCodeVerificationScreen> {
  TextEditingController textEditingController = TextEditingController();

  StreamController<ErrorAnimationType>? errorController;

  bool hasError = false;
  String currentText = "";
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    errorController = StreamController<ErrorAnimationType>();
    super.initState();
  }

  @override
  void dispose() {
    errorController!.close();

    super.dispose();
  }

  // snackBar Widget
  snackBar(String? message) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message!),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pin Code'),
      ),
      // backgroundColor: Constants.primaryColor,
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: <Widget>[
          const SizedBox(height: 30),
          const SizedBox(height: 8),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              'Phone Number Verification',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 8),
            child: RichText(
              text: const TextSpan(
                  text: "Enter the code sent to ",
                  children: [
                    TextSpan(
                        text: "+628676767676",
                        style: TextStyle(
                            // color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15)),
                  ],
                  style: TextStyle(
                    // color: Colors.black54,
                    fontSize: 15,
                  )),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Form(
            key: formKey,
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 30),
                child: Center(
                  child: SizedBox(
                    width: 250.0,
                    child: PinCodeTextField(
                      appContext: context,
                      pastedTextStyle: TextStyle(
                        color: Colors.green.shade600,
                        fontWeight: FontWeight.bold,
                      ),
                      length: 4,
                      //obscureText: true,
                      obscuringCharacter: '*',
                      // obscuringWidget: const FlutterLogo(
                      //   size: 24,
                      // ),
                      blinkWhenObscuring: true,
                      animationType: AnimationType.fade,
                      // validator: (v) {
                      //   if (v!.length < 3) {
                      //     return "I'm from validator";
                      //   } else {
                      //     return null;
                      //   }
                      // },
                      // mainAxisAlignment: MainAxisAlignment.center,

                      pinTheme: PinTheme(
                        shape: PinCodeFieldShape.box,
                        borderRadius: BorderRadius.circular(5),
                        fieldHeight: 50,
                        fieldWidth: 40,
                        activeFillColor: Colors.white,
                        selectedColor: Colors.blue,
                        selectedFillColor: Colors.white,
                        activeColor: Colors.blue,
                        errorBorderColor: Colors.white,
                        inactiveColor: Colors.white,
                        inactiveFillColor: Colors.white,
                      ),
                      cursorColor: Colors.black,
                      //animationDuration: const Duration(milliseconds: 300),
                      enableActiveFill: true,
                      errorAnimationController: errorController,
                      controller: textEditingController,
                      keyboardType: TextInputType.number,
                      boxShadows: const [
                        BoxShadow(
                          offset: Offset(0, 1),
                          color: Colors.black12,
                          blurRadius: 10,
                        )
                      ],
                      textStyle: const TextStyle(color: Colors.black),
                      onCompleted: (v) {
                        debugPrint("Completed");
                      },
                      // onTap: () {
                      //   print("Pressed");
                      // },
                      onChanged: (value) {
                        debugPrint(value);
                        setState(() {
                          currentText = value;
                        });
                      },
                      beforeTextPaste: (text) {
                        debugPrint("Allowing to paste $text");
                        //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                        //but you can show anything you want here, like your pop up saying wrong paste format or etc
                        return true;
                      },
                    ),
                  ),
                )),
          ),
          Center(
            child: Text(
              hasError ? "*Please fill up all the cells properly" : "",
              style: const TextStyle(
                color: Colors.red,
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Didn't receive the code? ",
                style: TextStyle(
                  // color: Colors.black54,
                  fontSize: 15,
                ),
              ),
              TextButton(
                onPressed: () => snackBar("OTP resend!!"),
                child: const Text(
                  "RESEND",
                  style: TextStyle(
                      color: Color(0xFF91D3B3),
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 14,
          ),
          YbButton(
            onPressed: () {
              formKey.currentState!.validate();
              // conditions for validating
              if (currentText.length != 6 || currentText != "123456") {
                errorController!.add(ErrorAnimationType
                    .shake); // Triggering error shake animation
                setState(() => hasError = true);
              } else {
                setState(
                  () {
                    hasError = false;
                    snackBar("OTP Verified!!");
                  },
                );
              }
            },
            child: const YbText('Verify'),
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Flexible(
                  child: TextButton(
                child: const Text("Clear"),
                onPressed: () {
                  textEditingController.clear();
                },
              )),
              Flexible(
                  child: TextButton(
                child: const Text("Set Text"),
                onPressed: () {
                  setState(() {
                    textEditingController.text = "123456";
                  });
                },
              )),
            ],
          )
        ],
      ),
    );
  }
}
