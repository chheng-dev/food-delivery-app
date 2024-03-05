import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_app/screens/main_screen.dart';
import 'package:food_app/widgets/custom_textfield.dart';
import 'package:google_fonts/google_fonts.dart';


class SinginScreen extends StatelessWidget {
  const SinginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.center,
                child: Text(
                  "Sign In", 
                  style: GoogleFonts.poppins(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 40),
              TextFieldWidget(
                suffixIcon: Icon(CupertinoIcons.mail),
                obscureText: false,
                text: 'Email',
                hintText: 'dev@gmail.com',
              ),
              SizedBox(height: 20),
              TextFieldWidget(
                suffixIcon: Icon(CupertinoIcons.eye),
                obscureText: true,
                text: 'Password',
                hintText: 'Enter your password',
              ),

              SizedBox(height: 12),
              // fogot password
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [ 
                  Text(
                    "Forgot Password ?",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  )
                ],
              ),
              
              //singin button
              SizedBox(height: 25),
              SizedBox(
                height: 60,
                width: double.infinity,
                child: FilledButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MainScreen(),));
                  }, 
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ),
              ),

              
              SizedBox(height: 15),
              Center(
                child: Row( 
                  children: [ 
                    Expanded(
                      child: Divider(
                        color: Colors.grey.shade400,
                        thickness: 1.0,
                      )
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        'or',
                        style: TextStyle(
                          color: Colors.grey.shade700,
                          fontSize: 18,
                          fontWeight: FontWeight.w600
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.grey.shade400,
                        thickness: 1.0,
                      )
                    ),
                  ],
                ),
              ),

              SizedBox(height: 15),
              Row(
                children: [ 
                  Expanded(
                    child: OutlinedButton.icon(
                      onPressed: (){}, 
                      icon: Icon(
                        Icons.mail,
                        size: 28,
                      ), 
                      label: Text(
                        "Google",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                      style: FilledButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 16),
                        foregroundColor: Colors.grey,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: OutlinedButton.icon(
                      onPressed: (){}, 
                      icon: Icon(
                        Icons.facebook_rounded,
                        size: 28,
                      ), 
                      label: Text(
                        "Facebook",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                      style: FilledButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 16),
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                        
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 20),
              Center(
                child: RichText(
                  text: TextSpan(
                    text: "Not yet a member,",
                    style: TextStyle(
                      color: Colors.grey.shade600, 
                      fontSize: 16
                    ),
                    children: [
                    TextSpan(
                      text: ' Sing up',  
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.redAccent,
                      ),
                    ),

                    ]
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}