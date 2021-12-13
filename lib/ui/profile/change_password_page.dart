import 'package:dicoding_capstone_pos/provider/auth_provider.dart';
import 'package:dicoding_capstone_pos/widgets/input_field.dart';
import 'package:dicoding_capstone_pos/widgets/rounded_button.dart';
import 'package:dicoding_capstone_pos/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChangePasswordPage extends StatelessWidget {
  static const routeName = '/change_password';
  static const pageTitle = 'Change Password';

  const ChangePasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var auth = Provider.of<AuthProvider>(context);
    var currentPassword = '';
    var newPassword = '';

    return Scaffold(
      appBar: AppBar(title: const Text(pageTitle)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              InputField(
                label: 'Current Password',
                hint: 'Enter Current Password',
                onChanged: (value) => currentPassword = value,
              ),
              spacing(12.0),
              InputField(
                label: 'New Password',
                hint: 'Must at least 6 character',
                onChanged: (value) => newPassword = value,
              ),
              spacing(32.0),
              RoundedButton(
                text: 'Update Password',
                onClick: () async {
                  await auth.changePassword(currentPassword, newPassword);

                  final snackBar = SnackBar(
                    content: Text(auth.message),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
