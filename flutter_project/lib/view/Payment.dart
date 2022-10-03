import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_project/view/Checkout.dart';
import 'package:flutter_project/view/detailProduk.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue[100],
          title: Text(
            "Checkout",
            style: TextStyle(color: Colors.black),
          )),
      backgroundColor: Colors.blue[100],
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(.2),
                          offset: Offset(0, -4),
                          blurRadius: 8),
                    ]),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 15,
                        left: 20,
                        right: 20,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              "Gabu",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 15,
                        left: 20,
                        right: 20,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              "082123456789",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                //fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 15,
                        left: 20,
                        right: 20,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              "Bumi parahyangan kencana blok G 15 no 18 RT 02 RW 04",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                //fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    minimumSize: const Size(150, 30),
                                    primary: Colors.white,
                                    side: BorderSide(
                                        width: 1.5, color: Colors.white),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5))),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => detail()));
                                },
                                child: Text("Pilih alamat lain",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      //fontWeight: FontWeight.bold
                                    ))),
                            SizedBox(
                              width: 50,
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    minimumSize: const Size(150, 30),
                                    primary: Colors.blue,
                                    side: BorderSide(
                                        width: 1.5, color: Colors.blue),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5))),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => detail()));
                                },
                                child: Text("Pilih Pembayaran")),
                          ],
                        ))
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 250,
              ),
              Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(.2),
                            offset: Offset(0, -4),
                            blurRadius: 8),
                      ]),
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
                              Text(
                                "Samsung Note 8",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                "Rp.12.000.000",
                                style: TextStyle(
                                    fontSize: 13, color: Colors.amber),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Color : ",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    "Black",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black),
                                  ),
                                  SizedBox(width: 80),
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.restore_from_trash,
                                        size: 30,
                                        color: Colors.red,
                                      )),
                                ],
                              ),
                            ],
                          )
                        ],
                      ))),
              SizedBox(height: 5),
              Container(
                width: MediaQuery.of(context).size.width,
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(.2),
                          offset: Offset(0, -4),
                          blurRadius: 8),
                    ]),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Total",
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 5),
                            Text("Rp.12.000.000",
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.orange,
                                    fontWeight: FontWeight.bold))
                          ]),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(130, 40),
                          primary: Colors.blue,
                          side:
                              BorderSide(width: 1.5, color: Colors.blueAccent),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => checkout()));
                      },
                      child: Text(
                        "Bayar",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    )
                    // Container(
                    //   padding: const EdgeInsets.symmetric(
                    //       vertical: 10, horizontal: 30),
                    //   decoration: BoxDecoration(
                    //       color: Colors.blue,
                    //       borderRadius: BorderRadius.circular(5)),
                    //   child: Text(
                    //     "Bayar",
                    //     style: TextStyle(
                    //         color: Colors.white,
                    //         fontSize: 20,
                    //         fontWeight: FontWeight.bold),
                    //   ),
                    // )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
