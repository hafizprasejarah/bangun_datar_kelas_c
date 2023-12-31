import 'package:bangun_data_c/page/Lingkaran.dart';
import 'package:bangun_data_c/page/persegi.dart';
import 'package:bangun_data_c/page/persegi_panjang.dart';
import 'package:bangun_data_c/page/segitiga.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Home Page",
          style: TextStyle(color: Color(0xFFFFFFFF)),
        ),
        backgroundColor: Colors.green.shade300,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => PersegiPage()));
                    }
                    ,child: CustomMenu(
                      title: "Persegi",
                      imageAsset: "assets/Persegi.jpg",
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => PersegiPanjangPage()));
                    }
                    ,child: CustomMenu(
                    title: "Persegi Panjang",
                    imageAsset: "assets/Persegi panjang.jpg",
                  ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Lingkaran()));
                    }
                    ,child: CustomMenu(
                    title: "Lingkaran",
                    imageAsset: "assets/lingkaran.jpg",
                  ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Segitiga()));
                    }
                    ,child: CustomMenu(
                    title: "Segitiga Sama Sisi",
                    imageAsset: "assets/segitiganew.jpg",
                  ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CustomMenu extends StatelessWidget {
  const CustomMenu({
    super.key,
    required this.imageAsset,
    required this.title,
  });

  final String imageAsset;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        decoration: BoxDecoration(
            color: Colors.green.shade400,
            borderRadius: BorderRadius.all(Radius.circular(14))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imageAsset,
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: TextStyle(color: Color(0xFFFFFFFF)),
              ),
            ),
          ],
        ));
  }
}



