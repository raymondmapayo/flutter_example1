import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/buildbutton.dart';
import 'package:flutter_application_1/components/buildtextfield.dart';
import 'package:flutter_application_1/newpage.dart';
import 'package:flutter_application_1/registration.dart';
import 'package:flutter_application_1/newpage.dart';

class SampleTextField extends StatelessWidget {
  SampleTextField({Key? key}) : super(key: key);

  TextEditingController txtController = TextEditingController();
  TextEditingController txtController1 = TextEditingController();
  TextEditingController txtController2 = TextEditingController();

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController fullNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Sample Text Field'),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BuildTextField(
                isPassword: false,
                txtController: txtController,
                hintTextVal: 'Enter Username',
                icon: Icon(Icons.person),
              ),
              const SizedBox(
                height: 10,
              ),
              BuildTextField(
                isPassword: true,
                txtController: txtController1,
                hintTextVal: 'Enter Password',
                icon: Icon(Icons.lock),
              ),
              const SizedBox(height: 15),
              BuildTextField(
                isPassword: true,
                txtController: txtController2,
                hintTextVal: 'Confirm Password',
                icon: Icon(Icons.lock),
              ),
              const SizedBox(height: 15),
              BuildButton(
                btnText: 'LOGIN',
                btnColor: Colors.red,
                onPressedData: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => NewPage(
                        username: txtController.text,
                        password: txtController1.text,
                        confirmpassword: txtController2.text,
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(height: 10), // Add space here
              const Text(
                "Don't have an account?",
                style: TextStyle(color: Colors.black),
              ),
              const SizedBox(height: 10), // Add margin here
              BuildButton(
                btnText: 'REGISTER',
                btnColor: Colors.blue,
                onPressedData: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => RegistrationForm(
                        username: usernameController.text,
                        password: passwordController.text,
                        confirm: confirmPasswordController.text,
                        email: emailController.text,
                        fullname: fullNameController.text,
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: SampleTextField(),
  ));
}
