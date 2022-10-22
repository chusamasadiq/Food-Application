import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'newpassword.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('We have sent an OTP to your Mobile',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 28,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
                SizedBox(height: 20),
                Padding(

                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Text('Please check your mobile number 03*****830 continue to reset your password',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.orange,
                          fontWeight: FontWeight.bold)),
                ),
                SizedBox(height: 60),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Container(
                       height: 64.0,
                       width: 56.0,
                       child: Card(
                           color: Colors.white,
                           child: Padding(
                             padding: EdgeInsets.only(left: 10.0, right: 10.0),
                           )
                       )
                   ),
                   SizedBox(width: 15),
                   Container(
                       height: 64.0,
                       width: 56.0,
                       child: Card(
                           color: Colors.white,
                           child: Padding(
                             padding: EdgeInsets.only(left: 10.0, right: 10.0),
                           )
                       )
                   ),
                   SizedBox(width: 15),
                   Container(
                       height: 64.0,
                       width: 56.0,
                       child: Card(
                           color: Colors.white,
                           child: Padding(
                             padding: EdgeInsets.only(left: 10.0, right: 10.0),
                           )
                       )
                   ),
                   SizedBox(width: 15),
                   Container(
                       height: 64.0,
                       width: 56.0,
                       child: Card(
                           color: Colors.white,
                           child: Padding(
                             padding: EdgeInsets.only(left: 10.0, right: 10.0),
                           )
                       )
                   ),
                 ],
               ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> NewPassword()));
                    },
                    child: const Text(
                      'Next',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ))),
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Did not receive?',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                    TextButton(
                        onPressed: () {
                        },
                        child: const Text('Click here',
                            style: TextStyle(fontWeight: FontWeight.bold)))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
