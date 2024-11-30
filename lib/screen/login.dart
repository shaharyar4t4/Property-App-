import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:houserentapp/constant/colour.dart';
import 'package:houserentapp/screen/dashbored.dart';
import 'package:houserentapp/screen/sign_up.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 20),
              child: IconButton(
                  onPressed: () {}, icon: Icon(Icons.arrow_back_outlined)),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
                child: Column(
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  width: 170,
                  height: 170,
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Login to Your Account",
                  style: TextStyle(
                      fontFamily: 'mulishbold',
                      color: Colors.black,
                      fontSize: 21,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 13,
                ),
                Container(
                  width: 325,
                  child: TextField(
                    controller: email,
                    decoration: InputDecoration(
                      hintText: "Email@gmail.com",
                      prefixIcon: Icon(Icons.email),
                      hintStyle: TextStyle(color: Colors.grey.shade400),
                      fillColor: Colors.grey[100],
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Container(
                  width: 325,
                  child: TextField(
                    obscureText: true,
                    controller: pass,
                    decoration: InputDecoration(
                      hintText: "Password",
                      prefixIcon: Icon(
                        Icons.lock,
                      ),
                      suffixIcon: Icon(Icons.visibility_off),
                      hintStyle: TextStyle(color: Colors.grey.shade400),
                      fillColor: Colors.grey[100],
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      value: _isChecked,
                      activeColor: btn,
            
                      onChanged: (bool? newValue) {
                        setState(() {
                          _isChecked = newValue!;
                        });
                      },
                    ),
                    const Text("Remember me", style: TextStyle(fontFamily: 'mulishbold', color: Colors.black45),),
                  ],
                ),
                SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () {
                    firbaselogin();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: btn,
                    minimumSize: Size(300, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 16, color: Colors.white, fontFamily: 'mulishbold'),
                  ),
                ),
                SizedBox(height: 10,),
                GestureDetector(
                  onTap: () {
                  },
                  child: Text(
                    "Forgot the password?",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 14,
                      fontFamily: 'mulishbold'
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text("or continue with" , style: TextStyle(fontFamily: 'mulishbold', color: Colors.black38),),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Icon(Icons.facebook, color: Colors.blue, size: 35,),
                      onPressed: () {
                        // Facebook login logic
                      },
                    ),
                    SizedBox(width: 60),
                    Image.asset('assets/images/google.jpg', width: 35, height: 35,),
                    SizedBox(width: 60),
                    IconButton(
                      icon: Icon(Icons.apple, color: Colors.black, size: 35,),
                      onPressed: () {
                        // Apple login logic
                      },
                    ),
                  ],
                ),
                SizedBox(height: 8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account? ",  style: TextStyle(fontFamily: 'mulishbold', color: Colors.black38),),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));
                      },
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                          color: Colors.blue,
                            fontFamily: 'mulishbold'
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )),
                    ],
                  ),
          )),
    );
  }

  void firbaselogin() async{
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email.text,
        password: pass.text,
      );
      final snackBar = SnackBar(
        backgroundColor: Colors.lightGreenAccent,
        content: const Text('Your are login now...', style: TextStyle(color: Colors.black),),
        action: SnackBarAction(
          label: '',
          onPressed: () {
            // Some code to undo the change.
          },
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      email.clear();
      pass.clear();
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Dashbored()));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        final snackBar = SnackBar(
          backgroundColor: Colors.red,
          content: const Text('No user found for that email.', style: TextStyle(color: Colors.white),),
          action: SnackBarAction(
            label: '',
            onPressed: () {
            },
          ),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      } else if (e.code == 'wrong-password') {
        final snackBar = SnackBar(
          backgroundColor: Colors.lightBlueAccent,
          content: const Text('Wrong password provided for that user.', style: TextStyle(color: Colors.black),),
          action: SnackBarAction(
            label: '',
            onPressed: () {
            },
          ),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    }
  }
}
