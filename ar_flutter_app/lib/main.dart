import 'package:ar_flutter_app/CarModel.dart';
import 'package:ar_flutter_app/NexBox.dart';
import 'package:ar_flutter_app/carDetails.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  List<CarModel> myList = [
    CarModel(
        carName: "Tesla Luxury Electric",
        carRate: "⭐ 4.5",
        carImg: "assets/images/1.png",
        carModel: "assets/car1.glb",
        ability: "4 Seats",
        carPrices: "₹4,630/ 1 Day",
        engine: "Hybrid engine",
        maxSpeed: "310km/h"),

    CarModel(
        carName: "BMW Luxury Vehicles",
        carRate: "⭐ 4.0",
        carImg: "assets/images/2.png",
        carModel: "assets/car2.glb",
        ability: "2 Seats",
        carPrices: "₹4,000/ 1 Day",
        engine: "Hybrid engine",
        maxSpeed: "300km/h"),

    CarModel(
        carName: "BMW Luxury Vehicles",
        carRate: "⭐ 4.0",
        carImg: "assets/images/3.png",
        carModel: "assets/car3.glb",
        ability: "2 Seats",
        carPrices: "₹4,000/ 1 Day",
        engine: "Hybrid engine",
        maxSpeed: "300km/h"),

    CarModel(
        carName: "BMW Luxury Vehicles",
        carRate: "⭐ 4.0",
        carImg: "assets/images/4.png",
        carModel: "assets/car4.glb",
        ability: "2 Seats",
        carPrices: "₹4,000/ 1 Day",
        engine: "Hybrid engine",
        maxSpeed: "300km/h"),
    
    CarModel(
        carName: "BMW Luxury Vehicles",
        carRate: "⭐ 4.0",
        carImg: "assets/images/5.png",
        carModel: "assets/car5.glb",
        ability: "2 Seats",
        carPrices: "₹4,000/ 1 Day",
        engine: "Hybrid engine",
        maxSpeed: "300km/h"),

    CarModel(
        carName: "BMW Luxury Vehicles",
        carRate: "⭐ 4.0",
        carImg: "assets/images/6.png",
        carModel: "assets/car6.glb",
        ability: "2 Seats",
        carPrices: "₹4,000/ 1 Day",
        engine: "Hybrid engine",
        maxSpeed: "300km/h"),

    CarModel(
        carName: "BMW Luxury Vehicles",
        carRate: "⭐ 4.0",
        carImg: "assets/images/7.png",
        carModel: "assets/car7.glb",
        ability: "2 Seats",
        carPrices: "₹4,000/ 1 Day",
        engine: "Hybrid engine",
        maxSpeed: "300km/h")
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
          backgroundColor: Colors.grey.shade300,
          title: const Row(
            children: [
              Icon(
                Iconsax.location,
                size: 18,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "Boston,United States",
                style: TextStyle(fontSize: 14),
              )
            ],
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                  onPressed: () {}, icon: Icon(Iconsax.profile_2user)),
            )
          ],
          leading: IconButton(
              onPressed: () {},
              icon: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Iconsax.menu),
              )),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Text("Hello,Jacob"),
                  ),
                ],
              ),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    child: Text(
                      "Choose your ideal car",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    NexBox(
                        child: Image.asset(
                      'assets/images/logo/logo1.png',
                      height: 40,
                      width: 40,
                    )),
                    NexBox(
                        child: Image.asset(
                      'assets/images/logo/logo2.png',
                      height: 40,
                      width: 40,
                    )),
                    NexBox(
                        child: Image.asset(
                      'assets/images/logo/logo3.png',
                      height: 40,
                      width: 40,
                    )),
                    NexBox(
                        child: Image.asset(
                      'assets/images/logo/logo4.png',
                      height: 40,
                      width: 40,
                    ))
                  ],
                ),
              ),
              const Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Text(
                      "Popular Car",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Expanded(
                  child: GridView.builder(
                itemCount: myList.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return CarDetails(
                            ability: myList[index].ability,
                            carModel: myList[index].carModel,
                            carName: myList[index].carName,
                            carPrices: myList[index].carPrices,
                            carRate: myList[index].carRate,
                            engine: myList[index].engine,
                            maxSpeed: myList[index].maxSpeed,
                          );
                        },
                      ));
                    },
                    child: NexBox(
                      child: Container(
                        child: Image.asset(myList[index].carImg),
                      ),
                    ),
                  );
                },
              ))
            ],
          ),
        ),
      ),
    );
  }
}
