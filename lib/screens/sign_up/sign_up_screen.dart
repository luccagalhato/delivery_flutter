// ignore: must_be_immutable
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timeless/helpers/validators.dart';
import 'package:timeless/models/user.dart';
import 'package:timeless/models/user_manager.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _escolhaUsuario = false;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  final User user = User();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        body: Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/delivery_pronto.png"),
                fit: BoxFit.fill,
              ),
            ),
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 100.0),
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: <Widget>[
                      const Padding(
                        padding: EdgeInsets.only(left: 35),
                        child: Text(
                          "Nick Name:",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Montserrat",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Consumer<UserManager>(
                  builder: (_, userManager, __) {
                    return Padding(
                      padding: const EdgeInsets.only(
                        left: 35,
                      ),
                      child: Row(
                        children: <Widget>[
                          // ignore: sized_box_for_whitespace
                          Container(
                            width: 190,
                            child: TextFormField(
                              enabled: !userManager.loading,
                              validator: (nickname) {
                                if (nickname.isEmpty) {
                                  return 'Required field';
                                }
                                return null;
                              },
                              onSaved: (nickname) => user.nickname = nickname,
                              autocorrect: false,
                              keyboardType: TextInputType.text,
                              style: const TextStyle(
                                fontSize: 14,
                                fontFamily: "Montserrat",
                              ),
                              decoration: const InputDecoration(
                                contentPadding:
                                    EdgeInsets.fromLTRB(0, 20, 20, 0),
                                hintText: "Name",
                                hintStyle: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
                Container(
                  margin: const EdgeInsets.only(
                    top: 35,
                    bottom: 25,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: Consumer<UserManager>(
                    builder: (_, userManager, __) {
                      return SingleChildScrollView(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 35.0, top: 20),
                            child: Text(
                              "E-mail ID:",
                              style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 14,
                                fontFamily: "Montserrat",
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 35.0,
                              right: 35.0,
                            ),
                            child: TextFormField(
                              enabled: !userManager.loading,
                              validator: (email) {
                                if (email.isEmpty) {
                                  return 'Required field';
                                } else if (!emailValid(email)) {
                                  return 'Invalid email';
                                }
                                return null;
                              },
                              onSaved: (email) => user.email = email,
                              keyboardType: TextInputType.emailAddress,
                              style: const TextStyle(
                                fontSize: 14,
                                fontFamily: "Montserrat",
                              ),
                              decoration: InputDecoration(
                                suffixIcon: const Padding(
                                  padding: EdgeInsets.fromLTRB(0, 20, 20, 0),
                                  child: Icon(
                                    Icons.contact_mail,
                                    color: Color(0xFF80031D),
                                  ),
                                ),
                                contentPadding:
                                    const EdgeInsets.fromLTRB(0, 20, 20, 0),
                                hintText: "Enter your E-mail ID",
                                hintStyle: TextStyle(
                                  fontSize: 14,
                                  fontFamily: "Montserrat",
                                  color: Colors.grey[600],
                                ),
                                filled: true,
                                fillColor: const Color(0xFFFFFFFF),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 35.0, top: 25),
                            child: Text(
                              "Mobile Number:",
                              style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 14,
                                  fontFamily: "Montserrat"),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 35.0,
                              right: 35.0,
                            ),
                            // ignore: sized_box_for_whitespace
                            child: TextFormField(
                              enabled: !userManager.loading,
                              keyboardType: TextInputType.phone,
                              style: const TextStyle(
                                fontSize: 14,
                                fontFamily: "Montserrat",
                              ),
                              decoration: InputDecoration(
                                suffixIcon: const Padding(
                                  padding: EdgeInsets.fromLTRB(0, 20, 20, 0),
                                  child: Icon(
                                    Icons.contact_phone,
                                    color: Color(0xFF80031D),
                                  ),
                                ),
                                contentPadding:
                                    const EdgeInsets.fromLTRB(0, 20, 20, 0),
                                hintText: "+1 | 9999-9999",
                                hintStyle: TextStyle(
                                  fontSize: 14,
                                  fontFamily: "Montserrat",
                                  color: Colors.grey[600],
                                ),
                                filled: true,
                                fillColor: const Color(0xFFFFFFFF),
                              ),
                              validator: (numb) {
                                if (numb.isEmpty) {
                                  return 'Required field';
                                } else if (numb.length < 6) {
                                  return 'Invalid number';
                                }
                                return null;
                              },
                              onSaved: (numb) => user.number = numb,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 35.0, top: 20),
                            child: Text(
                              "Create Password:",
                              style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 14,
                                  fontFamily: "Montserrat"),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 35.0,
                              right: 35.0,
                            ),
                            child: TextFormField(
                              enabled: !userManager.loading,
                              validator: (pass) {
                                if (pass.isEmpty) {
                                  return 'Required field';
                                } else if (pass.length < 6) {
                                  return 'Password too short';
                                }
                                return null;
                              },
                              onSaved: (pass) => user.password = pass,
                              obscureText: true,
                              keyboardType: TextInputType.text,
                              style: const TextStyle(
                                fontSize: 14,
                                fontFamily: "Montserrat",
                              ),
                              decoration: InputDecoration(
                                contentPadding:
                                    const EdgeInsets.fromLTRB(0, 20, 20, 0),
                                hintText: "Enter your Password",
                                hintStyle: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize: 14,
                                  color: Colors.grey[600],
                                ),
                                filled: true,
                                fillColor: const Color(0xFFFFFFFF),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 35.0, top: 20),
                            child: Text(
                              "Confirm Password:",
                              style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 14,
                                  fontFamily: "Montserrat"),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 35.0,
                              right: 35.0,
                            ),
                            child: TextFormField(
                              enabled: !userManager.loading,
                              obscureText: true,
                              keyboardType: TextInputType.text,
                              style: const TextStyle(
                                fontSize: 14,
                                fontFamily: "Montserrat",
                              ),
                              decoration: InputDecoration(
                                contentPadding:
                                    const EdgeInsets.fromLTRB(0, 20, 20, 0),
                                hintText: "Enter your Password",
                                hintStyle: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize: 14,
                                  color: Colors.grey[600],
                                ),
                                filled: true,
                                fillColor: const Color(0xFFFFFFFF),
                              ),
                              validator: (pass) {
                                if (pass.isEmpty) {
                                  return 'Required field';
                                } else if (pass.length < 6) {
                                  return 'Password too short';
                                }
                                return null;
                              },
                              onSaved: (pass) => user.confirmPassword = pass,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 35.0, top: 20),
                            child: Text(
                              "Full Name:",
                              style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 14,
                                fontFamily: "Montserrat",
                              ),
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                  width: 100,
                                  padding: const EdgeInsets.only(
                                    left: 35,
                                    right: 35,
                                  ),
                                  child: TextFormField(
                                    enabled: !userManager.loading,
                                    validator: (firstname) {
                                      if (firstname.isEmpty) {
                                        return 'Required field';
                                      }
                                      return null;
                                    },
                                    onSaved: (firstname) =>
                                        user.firstname = firstname,
                                    keyboardType: TextInputType.text,
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontFamily: "Montserrat",
                                    ),
                                    decoration: InputDecoration(
                                      contentPadding: const EdgeInsets.fromLTRB(
                                          0, 20, 20, 0),
                                      hintText: "First Name",
                                      hintStyle: TextStyle(
                                        fontSize: 14,
                                        fontFamily: "Montserrat",
                                        color: Colors.grey[600],
                                      ),
                                      filled: true,
                                      fillColor: const Color(0xFFFFFFFF),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  width: 100,
                                  padding: const EdgeInsets.only(
                                      left: 35, right: 35),
                                  child: TextFormField(
                                    enabled: !userManager.loading,
                                    validator: (lastname) {
                                      if (lastname.isEmpty) {
                                        return 'Required field';
                                      }
                                      return null;
                                    },
                                    onSaved: (lastname) =>
                                        user.lastname = lastname,
                                    keyboardType: TextInputType.text,
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontFamily: "Montserrat",
                                    ),
                                    decoration: InputDecoration(
                                      contentPadding: const EdgeInsets.fromLTRB(
                                          0, 20, 20, 0),
                                      hintText: "Last Name",
                                      hintStyle: TextStyle(
                                        fontFamily: "Montserrat",
                                        fontSize: 14,
                                        color: Colors.grey[600],
                                      ),
                                      filled: true,
                                      fillColor: const Color(0xFFFFFFFF),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 35.0, top: 10, right: 35, bottom: 30),
                            // ignore: avoid_unnecessary_containers
                            child: Container(
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    color: const Color(0xFF80031D),
                                    height: 35,
                                    width: 35,
                                    child: const Icon(
                                      Icons.notifications_active,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15, top: 10),
                                    child: Row(
                                      // ignore: prefer_const_literals_to_create_immutables
                                      children: <Widget>[
                                        const Text(
                                          "Push notifications",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: "Montserrat",
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, top: 10),
                                    child: Switch(
                                      activeColor: const Color(0xFF80031D),
                                      value: _escolhaUsuario,
                                      onChanged: (bool valor) {
                                        setState(() {
                                          _escolhaUsuario = valor;
                                        });
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 35,
                              right: 35,
                            ),
                            child: ButtonTheme(
                              height: 42,
                              minWidth: MediaQuery.of(context).size.width,
                              child: Center(
                                child: RaisedButton(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  color: Colors.white,
                                  disabledColor:
                                      const Color(0xff7F001D).withAlpha(100),
                                  onPressed: userManager.loading
                                      ? null
                                      : () {
                                          if (formKey.currentState.validate()) {
                                            formKey.currentState.save();

                                            if (user.password !=
                                                user.confirmPassword) {
                                              scaffoldKey.currentState
                                                  .showSnackBar(
                                                const SnackBar(
                                                  content: Text(
                                                      // ignore: unnecessary_string_escapes
                                                      "Passwords don\'t match"),
                                                  backgroundColor: Colors.red,
                                                ),
                                              );
                                              return;
                                            }

                                            userManager.signUp(
                                              user: user,
                                              onSuccess: () {
                                                Navigator.pushReplacementNamed(
                                                  context,
                                                  '/FirstScreen',
                                                );
                                              },
                                              onFail: (e) {
                                                scaffoldKey.currentState
                                                    .showSnackBar(
                                                  SnackBar(
                                                      content: Text(
                                                        'Failed to register: $e',
                                                      ),
                                                      backgroundColor:
                                                          Colors.red),
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
                                          "Continue",
                                          style: TextStyle(
                                              color: Color(0xff7F001D),
                                              fontWeight: FontWeight.w600,
                                              fontSize: 18,
                                              fontFamily: "Montserrat"),
                                        ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 35.0, top: 2),
                            child: Row(
                              children: <Widget>[
                                const Text(
                                  "By procceding, you agree with our ",
                                  style: TextStyle(
                                    color: Color(0xFF151515),
                                    fontFamily: "Montserrat",
                                    fontSize: 9.5,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: const Text(
                                    "Terms of Service",
                                    style: TextStyle(
                                      color: Color(0xFF3A559F),
                                      fontFamily: "Montserrat",
                                      fontSize: 9.5,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Text(
                                  " & ",
                                  style: TextStyle(
                                    color: Colors.grey[700],
                                    fontFamily: "Montserrat",
                                    fontSize: 9.5,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: const Text(
                                    "Privacy",
                                    style: TextStyle(
                                      color: Color(0xFF3A559F),
                                      fontFamily: "Montserrat",
                                      fontSize: 9.5,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 35.0, top: 2),
                            child: Row(
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {},
                                  child: const Text(
                                    'Policy.',
                                    style: TextStyle(
                                      color: Color(0xFF3A559F),
                                      fontFamily: "Montserrat",
                                      fontSize: 9.5,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Center(
                            child: Column(
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {},
                                  // ignore: sized_box_for_whitespace
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
                                          padding: const EdgeInsets.only(
                                            left: 15,
                                          ),
                                          child: Image.asset(
                                            "images/apple-32.png",
                                            height: 18,
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(
                                            left: 10,
                                            top: 5,
                                          ),
                                          child: Text(
                                            "Login with Apple ID",
                                            style: TextStyle(
                                                fontSize: 8.8,
                                                fontFamily: "Montserrat",
                                                color: Colors.white),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8),
                                  child: GestureDetector(
                                    onTap: () {
                                      // userManager.facebookLogin(
                                      //   onFail: (e) {
                                      //     scaffoldKey.currentState
                                      //         .showSnackBar(
                                      //       SnackBar(
                                      //         content:
                                      //             Text('Falha ao entrar: $e'),
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
                                          borderRadius:
                                              BorderRadius.circular(20),
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
                                            padding: const EdgeInsets.only(
                                              left: 15,
                                            ),
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
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8),
                                  child: GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                      height: 32,
                                      width: 175,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
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
                                            padding: const EdgeInsets.only(
                                              left: 15,
                                            ),
                                            child: Image.asset(
                                              "images/google.png",
                                              height: 18,
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(
                                              left: 10,
                                              top: 5,
                                            ),
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
                                const SizedBox(
                                  height: 20,
                                )
                              ],
                            ),
                          )
                        ],
                      ));
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
