import 'package:flutter/material.dart';
import 'package:test2/util/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _pageTitle = "";
  bool isChanged = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/login_img.png",
              fit: BoxFit.cover,
              // height: 500,
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "$_pageTitle",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                textScaleFactor: 1.0,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    onChanged: (value) {
                      setState(() {
                        _pageTitle = "Wellcome $value";
                      });
                    },
                    decoration: InputDecoration(
                      hintText: "Enter email",
                      labelText: "Email",
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
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
            InkWell(
              onTap: () async{
                isChanged = true;
                setState(() {});

                await Future.delayed(Duration(seconds: 1));
                Navigator.pushNamed(context, MyRoutes.home);
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
                decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    // shape: isChanged ? BoxShape.circle : BoxShape.circle,
                    borderRadius: BorderRadius.circular(isChanged ? 50 : 8)),
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
      // drawer: Drawer(),
    );
  }
}
