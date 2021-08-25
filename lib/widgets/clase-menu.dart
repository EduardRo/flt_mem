import 'package:flutter/material.dart';
import 'package:flt_mem_v1/models/clasa.dart';
import 'package:flt_mem_v1/screens/screenMeniuMaterii.dart';

class ClaseMenu extends StatelessWidget {
  const ClaseMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView.builder(
            itemCount: clase.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.blueAccent),
                      padding: MaterialStateProperty.all<EdgeInsets>(
                          EdgeInsets.all(10)),
                    ),
                    onPressed: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ScreenMeniuMaterii()),
                      )
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(
                            clase[index].denumireClasa.toString(),
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 6),
                ],
              );
            }),
      ),
    );
  }
}
