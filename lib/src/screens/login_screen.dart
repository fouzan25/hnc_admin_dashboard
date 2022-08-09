import 'package:flutter/material.dart';
import 'package:hnc_admin_dashboard/src/constants/constants.dart';
import 'package:hnc_admin_dashboard/src/extension/color_extension.dart';
import 'package:hnc_admin_dashboard/src/screens/home.dart';
import 'package:hnc_admin_dashboard/src/widgets/input_widget.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = "/login_screen";
  LoginScreen({Key? key}) : super(key: key);
  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  void _submitHandler(BuildContext context) {
    final bool isValid = _formKey.currentState!.validate();
    if (isValid) {
      if (username.text == "admin" && password.text == "admin123") {
        Navigator.of(context).pushReplacementNamed(Home.routeName);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: "#373330".getColorFromString([0, 0, 0]),
      body: Center(
        child: Card(
            child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.60,
          width: MediaQuery.of(context).size.height * 0.50,
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: appPadding * 2,
                    vertical: appPadding / 2,
                  ),
                  child: Image.asset(
                    "assets/images/hnc_logo.png",
                    scale: 6,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: appPadding * 3,
                    vertical: appPadding / 2,
                  ),
                  child: InputWidget(
                    key: const ValueKey("username"),
                    controller: username,
                    labelText: "username",
                    validator: (value) {
                      if (value == "" || value == null) {
                        return "empty Felid";
                      }

                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: appPadding * 3,
                    vertical: appPadding / 2,
                  ),
                  child: InputWidget(
                    key: const ValueKey("pass"),
                    controller: password,
                    labelText: "password",
                    isPasswordFelid: true,
                    validator: (value) {
                      if (value == "" || value == null) {
                        return "empty Felid";
                      }
                      return null;
                    },
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'forgot your password ?',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.all(appPadding),
                  child: SizedBox(
                    height: 50,
                    width: 100,
                    child: MaterialButton(
                      onPressed: () => _submitHandler(context),
                      elevation: 4,
                      color: Theme.of(context).colorScheme.primary,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                      child: const Text(
                        'Sign in',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
        )),
      ),
    );
  }
}
