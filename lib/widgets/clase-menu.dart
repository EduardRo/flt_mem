import 'package:flutter/material.dart';
import 'package:flt_mem_v1/models/clasa.dart';

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
                    onPressed: () => {print(index)},
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
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              size: 2,
                            ),
                            Icon(Icons.star),
                            Icon(Icons.star),
                            Icon(Icons.star)
                          ],
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