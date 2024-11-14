import 'package:flutter/material.dart';

import '../widget/vycontainers.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var height, width,widthh;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width*(7/9);
    widthh = MediaQuery.of(context).size.width*0.4;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: Container(
                      child: IconButton(
                        icon: Icon(Icons.arrow_back_ios_new),
                        onPressed: () {
                          // Handle back button pressed
                        },
                      ),
                    ),
                  ),
                  Text(
                    "E P I C U R E ",
                  ),
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: Container(
                      child: IconButton(
                        icon: Icon(Icons.menu),
                        onPressed:(){},
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
        
                    padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                    child: Text(
                      "Customize Your Nutrition",
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        VaibhavContainerBig(
                          height: 200.0,
                          width: width,
                          title: 'Weight Loss Plan',
                          description: 'Get personalized diet plans for weight loss.',
                          image: AssetImage('assets/images/meanplanner.png'),
                        ),
                        VaibhavContainerBig(
                          height: 200.0,
                          width: width,
                          title: 'Muscle Gain Plan',
                          description: 'Discover diet plans to build muscle mass.',
                          image: AssetImage('assets/images/muscle.png'),
                        ),
                        VaibhavContainerBig(
                          height: 200.0,
                          width: width,
                          title: 'Keto Diet Plan',
                          description: 'Explore the ketogenic diet for weight loss.',
                          image: AssetImage('assets/images/keto.png'),
                        ),
                        VaibhavContainerBig(
                          height: 200.0,
                          width:width,
                          title: 'Mediterranean Diet',
                          description: 'Discover the Mediterranean diet for heart health.',
                          image: AssetImage('assets/images/memtraindeirt.png'),
                        ),
                        VaibhavContainerBig(
                          height: 200.0,
                          width: width,
                          title: 'Intermittent Fasting',
                          description: 'Learn about intermittent fasting for wellness.',
                          image: AssetImage('assets/images/meanplanner.png'),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                    child: Text(
                      "Featured Content",
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        VaibhavContainerSmall(
                          height: 150.0,
                          width: double.infinity,
                          title: 'Vitamins',
                          image: AssetImage('assets/images/vitamin.png'),
                        ),
                        VaibhavContainerSmall(
                          height: 150.0,
                          width: double.infinity,
                          title: 'Minerals',
                          image: AssetImage('assets/images/mineral.png'),
                        ),
                        VaibhavContainerSmall(
                          height: 150.0,
                          width: double.infinity,
                          title: 'Proteins',
                          image: AssetImage('assets/images/protien.png'),
                        ),
                        // Add more nutrient categories here...
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                    child: Text(
                      "Groceries for Your Organ Health",
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        VaibhavContainerBig(
                          height: 230.0,
                          width: width,
                          title: 'Heart Health',
                          description: 'Foods to maintain a healthy heart.',
                          image: AssetImage('assets/images/heart.png'),
                        ),
                        VaibhavContainerBig(
                          height: 230.0,
                          width: width,
                          title: 'Liver Health',
                          description: 'Foods to support liver function.',
                          image: AssetImage('assets/images/liver.png'),
                        ),
                        VaibhavContainerBig(
                          height: 230.0,
                          width: width,
                          title: 'Kidney Health',
                          description: 'Foods to promote kidney health.',
                          image: AssetImage('assets/images/kidney.png'),
                        ),
                        VaibhavContainerBig(
                          height: 230.0,
                          width: width,
                          title: 'Brain-Boosting Foods',
                          description: 'Foods to enhance brain memory.',
                          image: AssetImage('assets/images/brain.png'),
                        ),
                        VaibhavContainerBig(
                          height: 230.0,
                          width: width,
                          title: 'Bone-Strengthening Foods',
                          description: 'Foods for bone health.',
                          image: AssetImage('assets/images/bone.png'),
                        ),
                        VaibhavContainerBig(
                          height: 230.0,
                          width: width,
                          title: 'Digestive Health Foods',
                          description: 'Foods for healthy digestive system.',
                          image: AssetImage('assets/images/digestion.png'),
                        ),
                      ],
                    ),
        
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                    child: Text(
                      "Other Products",
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        VaibhavContainerSmall(
                          height: height / 4.5,
                          width: widthh,
                          title: "Supplements",
                          image: AssetImage("assets/images/meanplanner.png"),
                        ),
                        VaibhavContainerSmall(
                          height: height / 4.5,
                          width: widthh,
                          title: "Organic Snacks",
                          image: AssetImage("assets/images/meanplanner.png"),
                        ),
                        VaibhavContainerSmall(
                          height: height / 4.5,
                          width: widthh,
                          title: "Healthy Cooking Oils",
                          image: AssetImage("assets/images/meanplanner.png"),
                        ),
                        VaibhavContainerSmall(
                          height: height / 4.5,
                          width: widthh,
                          title: "Immune Boosters",
                          image: AssetImage("assets/images/meanplanner.png"),
                        ),
                        // Add more VaibhavContainerSmall widgets here as needed
                      ],
                    ),
                  ),
        
        
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


