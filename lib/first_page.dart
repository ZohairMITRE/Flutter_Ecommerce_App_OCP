import 'package:act_4_community_by_ocp/view/auth/login_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_im_animations/im_animations.dart';
import 'package:new_im_animations/main.dart';
import 'package:act_4_community_by_ocp/constance.dart';
import 'package:get/get.dart';

String logo1_path = 'assets/images/Logo1_OCP.png';
String logo2_path = 'assets/images/Logo1_OCP.png';

class FirstPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    var submitTextStyle = GoogleFonts.nunito(
        fontSize: 28,
        letterSpacing: 5,
        color: Colors.white,
        fontWeight: FontWeight.w300);
    return Scaffold(
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                margin: EdgeInsets.all(2.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 130 ,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child:
                      Image.asset(
                          'assets/images/icon_app_OCP2.png',
                          fit:BoxFit.contain,
                      ),
                    )
                  ],
                )
            ),
            SizedBox(
              height: 40,
            ),
            //---------------------------------- bouton ==> Je suis visiteur
            AnimatedButton(
              height: 70,
              width: 200,
              text: 'Visiteur',
              isReverse: true,
              selectedTextColor: secondColor,
              transitionType: TransitionType.CENTER_LR_IN,
              //textStyle: submitTextStyle,
              backgroundColor: primaryColor,
              borderColor: Colors.white,
              borderRadius: 50,
              borderWidth: 2,
              onPress: () {
                print("Visiteur");
              },
            ),
            SizedBox(
              height: 40,
            ),
            //---------------------------------- bouton ==> Je suis Administrateur
            AnimatedButton(
              height: 70,
              width: 250,
              text: 'Administrateur',
              isReverse: true,
              selectedTextColor: primaryColor,
              transitionType: TransitionType.CENTER_LR_IN,
              //textStyle: submitTextStyle,
              backgroundColor: secondColor,
              borderColor: Colors.white,
              borderRadius: 50,
              borderWidth: 2,
              onPress: () {
                Get.to(LoginView());
                print("Administrateur");
              },
            ),
            SizedBox(
              height: 40,
            ),
            //---------------------------------- bouton ==> Je suis Super administratuer
            AnimatedButton(
              height: 70,
              width: 300,
              text: 'Super Administrateur',
              isReverse: true,
              selectedTextColor: primaryColor,
              transitionType: TransitionType.CENTER_LR_IN,
              //textStyle: submitTextStyle,
              backgroundColor: secondColor,
              borderColor: Colors.white,
              borderRadius: 50,
              borderWidth: 2,
              onPress: () {
                Get.to(LoginView());
                print("Super Administrateur");
              },
            ),
          ],
        ),
      ),
    );
  }
}