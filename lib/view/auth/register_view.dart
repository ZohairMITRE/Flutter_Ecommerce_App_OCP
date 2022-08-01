
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'login_view.dart';

class RegisterView extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        flexibleSpace: Container(
          height: 50 ,
          width: 120,
          margin: EdgeInsets.fromLTRB(110, 30, 85, 10),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/Logo1_OCP.png"),
                fit:BoxFit.fill,
                alignment: Alignment.center
            ),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: GestureDetector(
            onTap: () {
              Get.off(LoginView());
            },
            child:
            Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            )
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 50,
          right: 20,
          left: 20,
        ),
        child: Form(
          key: _formKey,
          child: Column(
            children: [

              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 30,
              ),

              SizedBox(
                height: 40,
              ),

              SizedBox(
                height: 15,
              ),

              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
