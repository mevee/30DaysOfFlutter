import 'package:flutter/material.dart';
import 'package:test2/util/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _pageTitle = "";
  bool isChanged = false;

  final _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).canvasColor,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset(
                "assets/images/hey.png",
                fit: BoxFit.cover,
                // height: 500,
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Wellcome $_pageTitle",
                  style: TextStyle(
                      color: Theme.of(context).buttonColor,
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  textScaleFactor: 1.0,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      onChanged: (value) {
                        setState(() {
                          _pageTitle = "$value";
                        });
                      },
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Email con't be empty";
                        } else if (!value.contains("@")) {
                          return "Valid email required";
                        } else
                          return null;
                      },
                      decoration: InputDecoration(
                        hintText: "Enter email",
                        labelText: "Email",
                      ),
                    ),
                    TextFormField(
                      obscureText: true,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Password con't be empty";
                        } else if (value.length < 6) {
                          return "password must be min of 6 character";
                        } else
                          return null;
                      },
                      decoration: InputDecoration(
                        hintText: "Enter password",
                        labelText: "Password",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Material(
                color: Theme.of(context).buttonColor,
                borderRadius: BorderRadius.circular(isChanged ? 50 : 8),
                child: InkWell(
                  onTap: () async {
                    validateAllFields(context);
                  },
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    alignment: Alignment.center,
                    width: isChanged ? 50 : 150,
                    height: 50,
                    child: isChanged
                        ? Icon(Icons.done, color: Colors.white)
                        : Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                  ),
                ),
              ),

              // ElevatedButton(
              //   onPressed: () {
              //     Navigator.pushNamed(context, MyRoutes.home);
              //     // Navigator.pop(context);
              //   },
              //   child: Text("Login"),
              //   style: TextButton.styleFrom(minimumSize: Size(150, 40)),
              // ),
            ],
          ),
        ),
      ),
      // drawer: Drawer(),
    );
  }

  void validateAllFields(BuildContext context) async {
    if (!_formKey.currentState.validate()) {
      return;
    }

    isChanged = true;
    setState(() {});

    await Future.delayed(Duration(seconds: 1));
    await Navigator.pushNamed(context, MyRoutes.home);
    isChanged = false;
    setState(() {});
  }
}
