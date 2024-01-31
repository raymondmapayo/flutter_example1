import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/buildbutton.dart';
import 'package:flutter_application_1/components/buildtextfield.dart';
import 'package:flutter_application_1/sampletextfield.dart';

// ignore: must_be_immutable
class RegistrationForm extends StatelessWidget {
  RegistrationForm(
      {Key? key,
      required String username,
      required String password,
      required String confirm,
      required String email,
      required String fullname})
      : super(key: key);

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController fullNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registration Form'),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BuildTextField(
                isPassword: false,
                txtController: usernameController,
                hintTextVal: 'Enter Username',
                icon: Icon(Icons.person),
              ),
              const SizedBox(height: 10),
              BuildTextField(
                isPassword: true,
                txtController: passwordController,
                hintTextVal: 'Enter Password',
                icon: Icon(Icons.lock),
              ),
              const SizedBox(height: 10),
              BuildTextField(
                isPassword: true,
                txtController: confirmPasswordController,
                hintTextVal: 'Confirm Password',
                icon: Icon(Icons.lock),
              ),
              const SizedBox(height: 10),
              BuildTextField(
                isPassword: false,
                txtController: emailController,
                hintTextVal: 'Enter Email',
                icon: Icon(Icons.email),
              ),
              const SizedBox(height: 10),
              BuildTextField(
                isPassword: false,
                txtController: fullNameController,
                hintTextVal: 'Enter Phone Number',
                icon: Icon(Icons.phone),
              ),
              const SizedBox(height: 15),
              BuildButton(
                btnText: 'REGISTER',
                btnColor: Colors.blue,
                onPressedData: () {
                  Navigator.of(context).pop(context);
                  // Process registration logic here
                  final username = usernameController.text;
                  final password = passwordController.text;
                  final confirmPassword = confirmPasswordController.text;
                  final email = emailController.text;
                  final fullName = fullNameController.text;

                  // Perform registration actions or validation as needed
                  // You can add your logic here
                },
              ),
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
