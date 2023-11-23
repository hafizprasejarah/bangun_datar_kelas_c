import "dart:math" show pi;
import 'package:get/get.dart';

class LingkaranController extends GetxController{
  num Pi= pi;
  int  jari = 0;
  final hasil = "".obs;

  void hitungLuas(){
    num hitung = Pi * jari * jari;
    hasil.value = "Hasil Perhitungan Luas Lingkaran dari jari-jari $jari adalah $hitung";
  }

  void hitungKeliling(){
    num hitung = 2 * (Pi * jari);
    hasil.value = "Hasil Perhitungan Keliling Lingkaran adalah $hitung ";
  }

}