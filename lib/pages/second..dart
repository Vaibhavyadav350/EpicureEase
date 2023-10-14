import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
              Image.asset("assets/images/ill1.png"),
              SizedBox(
                height: 20,
              ),SizedBox(
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
// I want to create a grocery delivery app in Flutter with some special
// fetaure sorting features like healthy foods on top (depneing upon the the
// trans fats and protien (it can be changed but in order ro use dijistra algortihm so do acordingto that  ))
// which will join both costmner and sellers selllers can list thier projects and couster and