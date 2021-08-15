import 'package:flutter/material.dart';
import 'package:flt_mem_v1/models/materii.dart';

class ClaseMenuMaterii extends StatelessWidget {
  const ClaseMenuMaterii({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView.builder(
            itemCount: clasa09.length,
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
                            clasa09[index].denumireserie.toString(),
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              size: 16,
                              color: Colors.yellowAccent,
                            ),
                            Icon(
                              Icons.star,
                              size: 16,
                              color: Colors.yellowAccent,
                            ),
                            Icon(
                              Icons.star,
                              size: 16,
                              color: Colors.red[800],
                            ),
                            Icon(
                              Icons.star,
                              size: 16,
                              color: Colors.yellowAccent[700],
                            )
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
