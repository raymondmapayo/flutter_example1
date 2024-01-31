import 'package:flutter/material.dart';

class NewPage extends StatelessWidget {
  const NewPage({
    Key? key,
    required this.username,
    required this.password,
    required this.confirmpassword,
  }) : super(key: key);

  final String username;
  final String password;
  final String confirmpassword;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Page'),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('This is a new page'),
            Text('Your username is: $username'),
            Text('Your password is: $password'),
            Text('Your confirm password is: $confirmpassword'),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('GO BACK'),
            ),
          ],
        ),
      ),
    );
  }
}
