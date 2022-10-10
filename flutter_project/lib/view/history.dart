import 'package:flutter/material.dart';

class history extends StatefulWidget {
  const history({Key? key}) : super(key: key);

  @override
  State<history> createState() => _historyState();
}

class _historyState extends State<history> {
  final List menu = [
    "Samsung Z Flip",
    "Vivo",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "History",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.blue[100],
      ),
      backgroundColor: Colors.blue[100],
      body: Container(
        margin: EdgeInsets.only(top: 15, left: 8, right: 8),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Card(
              shadowColor: Colors.black,
              elevation: 20,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Theme.of(context).colorScheme.outline,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(20)),
              ),
              child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/samsung.jfif",
                        width: 100,
                        height: 100,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Kode Pembayaran : 078-ASDEQ-07-08",
                                  style: TextStyle(
                                      fontSize: 11,
                                      color: Colors.blue,
                                      fontStyle: FontStyle.italic)),
                              const SizedBox(
                                height: 8,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Text(
                            "Samsung Note 8",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Color",
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontStyle: FontStyle.italic)),
                              const SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.panorama_wide_angle_select_outlined,
                                color: Colors.brown,
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 0,
                          ),
                          Text(
                            "Item   : 1",
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                          SizedBox(
                            height: 0,
                          ),
                          Text(
                            "Total  : Rp.12.000.000",
                            style: TextStyle(
                                fontSize: 16, color: Color(0xffFA6400)),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                        ],
                      )
                    ],
                  )),
            );
          },
          itemCount: menu.length,
        ),
      ),
    );
  }
}
