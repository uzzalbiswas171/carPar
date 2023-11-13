import 'package:car_parking/Screen/Parking_overview/parking_overview.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List ImagList=[
    "img/baby_car.png",
    "img/private_car.png",
    "img/taxi.jpg",
    "img/bycycle.PNG",
    "img/mini_micro_van.PNG",
    "img/motor_small_bye.PNG",
    "img/motor_squity.PNG",
    "img/motorbye.PNG",
    "img/motorbye2.PNG",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: InkWell(
            onTap: () {
            },
            child: Text("Car Parking")),
        actions: [
          IconButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => ParkingOverview(),));
          }, icon: Icon(Icons.list_alt))
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(
          left: 10,right: 10,top: 10
        ),
        height: double.infinity,
        width: double.infinity,
        //  decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/appbacground.jpg"),fit: BoxFit.fill)),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2
        ),
            itemCount: ImagList.length,
            itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(5),
            height: 300,
              width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              color: Colors.redAccent.withOpacity(0.7),
            ),
           alignment: Alignment.center,
           child: Column(
             children: [
               Expanded(child: Container(
                 decoration: BoxDecoration(image: DecorationImage(image: AssetImage("${ImagList[index]}"),fit: BoxFit.fill)),
               )),
               Text("Car",style: TextStyle(fontSize: 20),),
             ],
           ),
          );
        },)
      ),
    );
  }
}
