import 'package:flutter/material.dart';

class Intropage extends StatefulWidget {
  const Intropage({super.key});

  @override
  State<Intropage> createState() => _IntropageState();
}

class _IntropageState extends State<Intropage> {
  String selectedLanguage = 'English'; // Default selected language

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 200),
            Image.asset(
              "assets/images/learn-book.gif",
            ),
            Text(
              "Bhagavad Gita - Simplified",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Read the Gita saar anywhere, anytime!",
              style: TextStyle(
                color: Colors.black54,
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 200),
            InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return StatefulBuilder(
                      builder: (context, setState) {
                        return AlertDialog(
                          shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          backgroundColor: Colors.white,
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset("assets/images/lang-removebg-preview.png"),
                              Text(
                                "     Choose your \npreferred language",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "(Don't worry, you can change it later.)",
                                style:
                                TextStyle(color: Colors.black, fontSize: 15),
                              ),
                              SizedBox(height: 10),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Radio(
                                        activeColor: Colors.deepOrange,
                                        value: 'English',
                                        groupValue: selectedLanguage,
                                        onChanged: (value) {
                                          setState(() {
                                            selectedLanguage = value.toString();
                                          });
                                        },
                                      ),
                                      SizedBox(width: 20,),
                                      Text(
                                        'English',
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    children: [
                                      Radio(
                                        activeColor: Colors.deepOrange,
                                        value: 'Hindi',
                                        groupValue: selectedLanguage,
                                        onChanged: (value) {
                                          setState(() {
                                            selectedLanguage = value.toString();
                                          });
                                        },
                                      ),
                                      SizedBox(width: 20,),
                                      Text(
                                        'Hindi',
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              InkWell(
                                onTap: () {
                                  Navigator.pushReplacementNamed(context, "home");
                                },
                                child: Container(
                                  height: 60,
                                  width: 220,
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "ok, let's go!".toUpperCase(),
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                );
              },
              child: Container(
                height: 60,
                width: 330,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    "get started".toUpperCase(),
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}