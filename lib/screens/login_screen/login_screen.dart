import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timeless/helpers/validators.dart';
import 'package:timeless/models/user.dart';
import 'package:timeless/models/user_manager.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/logo.png'),
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                        bottom: 10,
                        top: MediaQuery.of(context).size.height / 3.5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <Widget>[
                        const Text(
                          'Hello There!',
                          style: TextStyle(
                            color: Color(0xFF7F031D),
                            fontSize: 29,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Form(
                      key: formKey,
                      child: Consumer<UserManager>(
                        builder: (_, userManager, __) {
                          return Padding(
                            padding: const EdgeInsets.only(
                                left: 32, bottom: 15, right: 32),
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: TextFormField(
                                    enabled: !userManager.loading,
                                    controller: emailController,
                                    keyboardType: TextInputType.emailAddress,
                                    validator: (email) {
                                      if (!emailValid(email)) {
                                        return "Invalid E-mail";
                                      }
                                      return null;
                                    },
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontFamily: "Montserrat",
                                    ),
                                    decoration: InputDecoration(
                                      contentPadding: const EdgeInsets.fromLTRB(
                                          32, 4, 32, 4),
                                      hintText: "E-mail",
                                      hintStyle: const TextStyle(
                                        fontSize: 16,
                                        fontFamily: "Montserrat",
                                      ),
                                      filled: true,
                                      fillColor: const Color(0xFFE5E5E5),
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius: BorderRadius.circular(27),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      )),
                  Consumer<UserManager>(
                    builder: (_, userManager, __) {
                      return Padding(
                        padding: const EdgeInsets.only(
                            left: 32, bottom: 15, right: 32),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: TextFormField(
                                controller: passController,
                                enabled: !userManager.loading,
                                keyboardType: TextInputType.emailAddress,
                                validator: (pass) {
                                  if (pass.isEmpty || pass.length < 6) {
                                    return "Invalid Password";
                                  }
                                  return null;
                                },
                                obscureText: true,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontFamily: "Montserrat",
                                ),
                                decoration: InputDecoration(
                                  contentPadding:
                                      const EdgeInsets.fromLTRB(32, 4, 32, 4),
                                  hintText: "Password",
                                  hintStyle: const TextStyle(
                                    fontSize: 16,
                                    fontFamily: "Montserrat",
                                  ),
                                  filled: true,
                                  fillColor: const Color(0xFFE5E5E5),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(27),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                  Consumer<UserManager>(
                    builder: (_, userManager, __) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 32, bottom: 5),
                            child: ButtonTheme(
                              height: 50,
                              minWidth: 150,
                              child: RaisedButton(
                                elevation: 3,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(27),
                                ),
                                color: const Color(0xFF7F001D),
                                disabledColor:
                                    const Color(0xff7F001D).withAlpha(100),
                                onPressed: userManager.loading
                                    ? null
                                    : () {
                                        if (formKey.currentState.validate()) {
                                          userManager.signIn(
                                            user: User(
                                              email: emailController.text,
                                              password: passController.text,
                                            ),
                                            onFail: (e) {
                                              scaffoldKey.currentState
                                                  .showSnackBar(SnackBar(
                                                content:
                                                    Text("Failed to enter: $e"),
                                                backgroundColor: Colors.red,
                                              ));
                                            },
                                            onSuccess: () {
                                              Navigator.pushReplacementNamed(
                                                context,
                                                '/FirstScreen',
                                              );
                                            },
                                          );
                                        }
                                      },
                                child: userManager.loading
                                    ? const CircularProgressIndicator(
                                        valueColor: AlwaysStoppedAnimation(
                                            Colors.white),
                                      )
                                    : const Text(
                                        "Login",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 22,
                                            fontFamily: "Montserrat"),
                                      ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 32,
                              bottom: 5,
                            ),
                            child: ButtonTheme(
                              height: 50,
                              minWidth: 150,
                              child: RaisedButton(
                                elevation: 2,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(27),
                                ),
                                color: const Color(0xFFFFFFFF),
                                onPressed: () {
                                  //TODO: ROTA PARA HELP CENTER
                                },
                                child: const Text(
                                  "Help Centre",
                                  style: TextStyle(
                                    color: Color(0xFF7F001D),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                    fontFamily: "Montserrat",
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      );
                    },
                  ),
                  Consumer<UserManager>(
                    builder: (_, userManager, __) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height / 25),
                            child: GestureDetector(
                              onTap: () {},
                              child: Container(
                                height: 32,
                                width: 175,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.black,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey[400],
                                        offset: const Offset(1, 1),
                                      )
                                    ]),
                                child: Row(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Image.asset(
                                        "images/apple-32.png",
                                        height: 18,
                                      ),
                                    ),
                                    const Padding(
                                      padding:
                                          EdgeInsets.only(left: 10, top: 5),
                                      child: Text(
                                        "Login with Apple ID",
                                        style: TextStyle(
                                          fontSize: 8.8,
                                          fontFamily: "Montserrat",
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: GestureDetector(
                              onTap: () {
                                // userManager.facebookLogin(
                                //   onFail: (e) {
                                //     scaffoldKey.currentState.showSnackBar(
                                //       SnackBar(
                                //         content: Text("Failed to enter: $e"),
                                //         backgroundColor: Colors.red,
                                //       ),
                                //     );
                                //   },
                                //   onSuccess: () {
                                //     Navigator.pushReplacementNamed(
                                //       context,
                                //       '/FirstScreen',
                                //     );
                                //   },
                                // );
                              },
                              child: Container(
                                height: 32,
                                width: 175,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: const Color(0xFF3A559F),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey[400],
                                        offset: const Offset(1, 1),
                                      )
                                    ]),
                                child: Row(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Image.asset(
                                        "images/facebook-32.png",
                                        height: 18,
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(
                                        left: 10,
                                        top: 5,
                                      ),
                                      child: Text(
                                        "Login with Facebook",
                                        style: TextStyle(
                                          fontSize: 8.8,
                                          fontFamily: "Montserrat",
                                          color: Colors.white,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: GestureDetector(
                              onTap: () {},
                              child: Container(
                                height: 32,
                                width: 175,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.black,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey[400],
                                        offset: const Offset(1, 1),
                                      )
                                    ]),
                                child: Row(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Image.asset(
                                        "images/google.png",
                                        height: 18,
                                      ),
                                    ),
                                    const Padding(
                                      padding:
                                          EdgeInsets.only(left: 10, top: 5),
                                      child: Text(
                                        "Login with Google",
                                        style: TextStyle(
                                          fontSize: 8.8,
                                          fontFamily: "Montserrat",
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height / 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                const Text(
                                  "You are not a member?",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color(0xff7F001D),
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Montserrat",
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(
                                      context,
                                      '/SignUp',
                                    );
                                  },
                                  child: const Text(
                                    " Register",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xffEDCBD1),
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Montserrat",
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      );
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
