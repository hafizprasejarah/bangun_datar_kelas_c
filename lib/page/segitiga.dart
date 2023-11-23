
import 'package:bangun_data_c/controller/persegi_panjang_controller.dart';
import 'package:bangun_data_c/controller/segitiga_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Segitiga extends StatelessWidget {
  Segitiga({Key? key}) : super(key: key);
  final SegitigaController _segitigaController = Get.put(SegitigaController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Segitiga Sama Sisi Page",
          style: TextStyle(color: Color(0xFFFFFFFF)),
        ),
        backgroundColor: Colors.green.shade300,
      ),
      body: ListView(
        children: [
          Image.asset(
            "assets/segitiganew.jpg",
            height: 400,
          ),
          Center(
            child: Text(
              "Segitiga Sama Sisi",
            ),
          ),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              decoration: BoxDecoration(
                  color: Colors.green.shade400,
                  borderRadius: BorderRadius.all(Radius.circular(14))),
              child: Text(
                "Segitiga merupakan bangun datar yang dibatasi dengan adanya tiga buah sisi serta memiliki tiga buah titik sudut. "
                    "Kemudian untuk alas dari segitiga adalah satu dari sisi suatu bangun segitiga.",
                style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 20),
                textAlign: TextAlign.center,
              )),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            decoration: BoxDecoration(
                color: Colors.green.shade400,
                borderRadius: BorderRadius.all(Radius.circular(14))),
            child: Column(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: SizedBox(
                        width: 240,
                        child: TextFormField(
                          onChanged: (String value) {
                            _segitigaController.a = int.parse(value);
                          },
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            labelText: "Alas atau Sisi Bawah",
                            hintText: "Masukkan alas atau sisi bawah",
                            hintStyle: TextStyle(color: Colors.grey.shade400),
                            contentPadding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 8),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(width: 1, color: Colors.grey),
                                borderRadius: BorderRadius.all(Radius.circular(10))),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 1, color: Colors.grey),
                                borderRadius: BorderRadius.all(Radius.circular(10))),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1, color: Colors.blue),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: SizedBox(
                        width: 240,
                        child: TextFormField(
                          onChanged: (String value) {
                            _segitigaController.t = int.parse(value);
                          },
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            labelText: "Tinggi",
                            hintText: "Masukkan Tinggi",
                            hintStyle: TextStyle(color: Colors.grey.shade400),
                            contentPadding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 8),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(width: 1, color: Colors.grey),
                                borderRadius: BorderRadius.all(Radius.circular(10))),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 1, color: Colors.grey),
                                borderRadius: BorderRadius.all(Radius.circular(10))),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1, color: Colors.blue),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ElevatedButton(
                        onPressed: () {
                          _segitigaController.hitungLuas();
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text("Hitung Luas",style: TextStyle(color: Color(0xFFFFFFFF)),),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.brown.shade400,
                        ),

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ElevatedButton(
                        onPressed: () {
                          _segitigaController.hitungKeliling();
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text("Hitung Keliling"),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 26),
            decoration: BoxDecoration(
                color: Colors.amberAccent.shade400,
                borderRadius: BorderRadius.all(Radius.circular(14))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Hasil :",style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 20)),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Obx(() => Text(_segitigaController.hasil.value,style: TextStyle(color: Color(0xFFFFFFFF)),textAlign: TextAlign.center,)),
                ),
                Text("======================",style: TextStyle(color: Color(0xFFFFFFFF))),
                Text("Thank You",style: TextStyle(color: Color(0xFFFFFFFF) , fontSize: 20)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
