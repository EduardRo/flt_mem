import 'package:flutter/material.dart';
import 'package:flt_mem_v1/models/materii.dart';
import 'package:flt_mem_v1/screens/screenTest.dart';

class ClaseMenuMaterii extends StatelessWidget {
  const ClaseMenuMaterii({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView.builder(
            itemCount: 7,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
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
                            builder: (context) => Test(
                                  index: index,
                                ),
                            settings: RouteSettings(arguments: index)),
                      )
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  calculation(
                                      clasa10[index].codmaterie.toString()),
                                  style: TextStyle(color: Colors.white),
                                ),
                                SizedBox(height: 2),
                                Text(
                                  clasa09[index].denumireserie.toString(),
                                  style: TextStyle(color: Colors.greenAccent),
                                  maxLines: 5,
                                  softWrap: true,
                                ),
                              ],
                            ),
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

String calculation(String codmaterie) {
  String value = "";
  switch (codmaterie) {
    case "AL":
      value = "Algebra";
      break;
    case "TR":
      value = "Trigonometrie";
      break;
  }

  return value;
}
