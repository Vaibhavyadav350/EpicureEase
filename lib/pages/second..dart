import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vgrocery_mart/home/home.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              SizedBox(
                height: 60,
              ),
              Image.asset("assets/images/ill2.png",height: 300,width: 300,),
              SizedBox(
                height: 60,
              ),
              Text(
                "Delevering groceries\nunder 15 minutes",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 35,
              ),
              Text(
                "Explore and order your\nfavourite grocery items.",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      },
                      child: Text(
                        "Explore",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black),
                      ),
                      style: ButtonStyle(
                        fixedSize:
                            MaterialStateProperty.all(Size.fromWidth(200)),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.amber), // Add this
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              5), // A high value to make it circular
                        )),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
