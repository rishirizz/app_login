import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utilities/app_utility.dart' as global;

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff191919),
        body: GestureDetector(
          onTap: () {
            FocusScopeNode currentFocus = FocusScope.of(context);
            if (!currentFocus.hasPrimaryFocus &&
                currentFocus.focusedChild != null) {
              currentFocus.focusedChild?.unfocus();
            }
          },
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 5, 30, 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.asset('images/login_lottie.json', height: 400),
                Expanded(
                  child: Center(
                    child: Column(
                      children: [
                        Text(
                          'Enterprise team collaboration',
                          style: GoogleFonts.pacifico(
                            textStyle: TextStyle(
                              color: Colors.white,
                              fontSize:
                                  (global.isSmallDevice(context)) ? 20 : 40,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: (!global.isSmallDevice(context))
                              ? const EdgeInsets.fromLTRB(80, 0, 80, 0)
                              : const EdgeInsets.fromLTRB(40, 0, 40, 0),
                          child: Text(
                            'Bring together your files, your tools, projects and people. Supports all platforms.',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                height: 1.2,
                                color: Colors.white,
                                fontSize:
                                    (global.isSmallDevice(context)) ? 12 : 25,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 200,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: Colors.green,
                      shadowColor: Colors.greenAccent,
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0),
                      ),
                    ),
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Register',
                        style: GoogleFonts.shanti(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: (global.isSmallDevice(context)) ? 16 : 25,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
