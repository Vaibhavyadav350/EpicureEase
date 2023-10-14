import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Image.asset("assets/images/ill1.png"),
              SizedBox(
                height: 20,
              ),
              Text(
                "Order your Groceries \nfrom your phone",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Now you can get groceries item at \n your doorstep.",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Icon(Icons.arrow_forward),
                style: ButtonStyle(
                  fixedSize:MaterialStateProperty.all(Size.square(55)),
                    backgroundColor: MaterialStateProperty.all(Colors.amber),
                    shape: MaterialStateProperty.all(CircleBorder(side:BorderSide.none)),
              ),)
            ],
          ),
        ),
      ),
    );
  }
}
