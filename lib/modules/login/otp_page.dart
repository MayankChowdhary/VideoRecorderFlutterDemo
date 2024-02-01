import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_recorder_flutter_demo/modules/login/login_controller.dart';

import '../../constants.dart';

class OTPPage extends StatelessWidget {
  const OTPPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
        builder: (controller) => Scaffold(
              appBar: AppBar(
                title: const Text('OTP Page'),
                backgroundColor: Colors.yellow,
              ),
              body: SingleChildScrollView(
                child: Container(
                    margin: const EdgeInsets.all(20),
                    child: Column(children: <Widget>[
                      const SizedBox(height: 100),
                      Center(
                          child: Image.asset(
                              'assets/images/ic_camcorder_logo.png',
                              width: 100,
                              height: 100)),
                      const SizedBox(height: 50),
                      const Center(
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Enter OTP',
                              hintText: 'Enter 6 digit OTP'),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Align(
                        alignment: Alignment.centerRight,
                        child: Text("Did not get OTP, resend?",
                            style: TextStyle(
                                color: Colors.blueAccent, fontSize: 14)),
                      ),
                      const SizedBox(height: 60),
                      ElevatedButton(
                        style: Constants.getRaisedButtonStyle(
                            size: Constants.mediumButtonSize),
                        onPressed: () {},
                        child: const Text('Get Started'),
                      )
                    ])),
              ),
            ));
  }
}