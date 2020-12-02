import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:travel_plan/core/config/base_config.dart';
import 'package:travel_plan/ui/pages/home_page.dart';
import 'package:travel_plan/ui/widgets/error_widget.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var _formKey = GlobalKey<FormState>();
  String _username;
  String _password;

  bool isLogin = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BaseConfig.primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 40, 20, 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Discover World \nwith Us!',
                  style: BaseConfig.textFont.copyWith(
                    color: Colors.white.withOpacity(0.9),
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  margin: EdgeInsets.only(left: 20, top: 30),
                  padding: const EdgeInsets.fromLTRB(15, 20, 15, 25),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Login',
                          style: BaseConfig.textFont.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 15),
                          child: Divider(),
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            labelText: 'Username',
                            hintText: 'Dandi Supriyadi',
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Username cant be empty';
                            }
                            return null;
                          },
                          onSaved: (value) => _username = value.trim(),
                        ),
                        SizedBox(height: 20),
                        TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            labelText: 'Password',
                            hintText: '***********',
                          ),
                          obscureText: true,
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Password cant be empty';
                            }
                            return null;
                          },
                          onSaved: (value) => _password = value.trim(),
                        ),
                        SizedBox(height: 15),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            'Forgot password ? click here',
                            style: BaseConfig.textFont,
                          ),
                        ),
                        SizedBox(height: 40),
                        SizedBox(
                          height: 45,
                          width: 200,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            color: BaseConfig.secondaryColor,
                            child: isLogin
                                ? SpinKitThreeBounce(
                                    color: Colors.white,
                                    size: 10,
                                  )
                                : Text(
                                    'Login'.toUpperCase(),
                                    style: BaseConfig.textFont.copyWith(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                            onPressed: () => _tryLogin(context),
                          ),
                        ),
                        SizedBox(height: 30),
                        Text(
                          'Don\'t have an account ?',
                          style: BaseConfig.textFont,
                        ),
                        SizedBox(height: 10),
                        SizedBox(
                          height: 45,
                          width: 200,
                          child: OutlineButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            borderSide: BorderSide(
                              color: BaseConfig.secondaryColor,
                            ),
                            child: Text(
                              'Register'.toUpperCase(),
                              style: BaseConfig.textFont.copyWith(
                                fontSize: 18,
                                color: BaseConfig.secondaryColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onPressed: () =>
                                errorWidget(context, 'Not Ready yet !'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _tryLogin(BuildContext context) async {
    var _formState = _formKey.currentState;

    if (_formState.validate()) {
      _formState.save();

      setState(() {
        isLogin = true;
      });
      await Future.delayed(Duration(seconds: 2));
      setState(() {
        isLogin = false;
      });

      if ((_username == 'dandi' || _username == 'Dandi') &&
          _password == '12345678') {
        Navigator.pushReplacementNamed(
          context,
          '/main_page',
          arguments: _username,
        );
      } else {
        errorWidget(context, 'Login Failed ! Wrong username / password');
      }
    }
  }
}
