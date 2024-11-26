import 'package:ar_flutter_app/NexBox.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class CarDetails extends StatelessWidget {
  String carName;
  String carRate;
  String carModel;
  String maxSpeed;
  String engine;
  String ability;
  String carPrices;
  CarDetails(
      {
      required this.carName,
      required this.carRate,
      required this.carModel,
      required this.ability,
      required this.carPrices,
      required this.engine,
      required this.maxSpeed});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
          backgroundColor: Colors.grey.shade300,
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Iconsax.star)),
          ],
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Iconsax.back_square)),
          title: Image.asset('assets/images/logo/logo1.png',
              height: 40, width: 40),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            NexBox(
              child: Container(
                height: 230,
                width: double.infinity,
                child: ModelViewer(
                  src: carModel,
                  ar: true,
                  cameraControls: true,
                  autoRotate: true,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Text(
                    carName,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(carRate)
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    NexBox(child: Icon(Iconsax.speedometer)),
                    Text("Max Speed",
                        style: TextStyle(
                          color: Colors.grey.shade700,
                        )),
                    Text(maxSpeed,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18))
                  ],
                ),
                Column(
                  children: [
                    NexBox(child: Icon(Iconsax.car)),
                    Text("Engine",
                        style: TextStyle(
                          color: Colors.grey.shade700,
                        )),
                    Text(engine,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18))
                  ],
                ),
                Column(
                  children: [
                    NexBox(child: Icon(Iconsax.battery_charging)),
                    Text("Ability",
                        style: TextStyle(
                          color: Colors.grey.shade700,
                        )),
                    Text(ability,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18))
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(24)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Rent price",
                            style: TextStyle(color: Colors.grey.shade100),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            carPrices,
                            style: TextStyle(
                                color: Colors.grey.shade100,
                                fontWeight: FontWeight.bold,
                                fontSize: 24),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 24),
                        decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius: BorderRadius.circular(24)),
                        child: Text(
                          "BOOK NOW",
                          style: TextStyle(
                            color: Colors.grey.shade500,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
