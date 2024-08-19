import 'package:flutter/material.dart';
import 'package:login_screen/Animation/FadeAnimation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins'),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Colors.orange[900]!,
              Colors.orange[800]!,
              Colors.orange[400]!
            ],
          ),
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    FadeAnimation(1,
                        child: const Text(
                          "Login",
                          style: TextStyle(color: Colors.white, fontSize: 40),
                        )),
                    const SizedBox(height: 10),
                    FadeAnimation(
                      1.3,
                      child: const Text(
                        "Welcome Back",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: FadeAnimation(
                  1.4,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(60),
                          topRight: Radius.circular(60)),
                    ),
                    child: FadeAnimation(
                      1.5,
                      child: Padding(
                        padding: EdgeInsets.all(30),
                        child: FadeAnimation(
                          1.6,
                          child: Column(
                            children: <Widget>[
                              const SizedBox(height: 60),
                              Container(
                                padding: const EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color.fromRGBO(225, 95, 27, .3),
                                      blurRadius: 20,
                                      offset: Offset(0, 10),
                                    ),
                                  ],
                                ),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      padding: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        border: Border(
                                          bottom: BorderSide(
                                              color: Colors.grey[200]!),
                                        ),
                                      ),
                                      child: FadeAnimation(
                                        1.7,
                                        child: const TextField(
                                          decoration: InputDecoration(
                                            hintText: "Email or Phone number",
                                            hintStyle:
                                                TextStyle(color: Colors.grey),
                                            border: InputBorder.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        border: Border(
                                          bottom: BorderSide(
                                              color: Colors.grey[200]!),
                                        ),
                                      ),
                                      child: FadeAnimation(
                                        1.8,
                                        child: const TextField(
                                          decoration: InputDecoration(
                                            hintText: "Password!",
                                            hintStyle:
                                                TextStyle(color: Colors.grey),
                                            border: InputBorder.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 40),
                              FadeAnimation(
                                1.9,
                                child: const Text(
                                  "Forgot Password?",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              const SizedBox(height: 40),
                              Container(
                                height: 50,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 50),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.orange[900],
                                ),
                                child: Center(
                                  child: FadeAnimation(
                                    2,
                                    child: const Text(
                                      "Login",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 30),
                              FadeAnimation(
                                2.1,
                                child: const Text(
                                  "Loging with social networks",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              const SizedBox(height: 80),
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Container(
                                      height: 50,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      child: Center(
                                        child: FadeAnimation(
                                          2.2,
                                          child: const Text(
                                            "Facebook",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 30),
                                  Expanded(
                                    child: Container(
                                      height: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Colors.black,
                                      ),
                                      child: Center(
                                        child: FadeAnimation(
                                          2.2,
                                          child: const Text(
                                            "Github",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
