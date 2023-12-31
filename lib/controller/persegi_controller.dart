
import 'package:get/get.dart';

class PersegiController extends GetxController{
  int sisi = 0;
  final hasil = "".obs;

  void hitungLuas(){
    int hitung = sisi * sisi;
    hasil.value = "Hasil Perhitungan Luas Persegi dari $sisi x $sisi adalah $hitung";
  }

  void hitungKeliling(){
    int hitung = sisi + sisi + sisi + sisi;
    hasil.value = "Hasil Perhitungan Keliling Persegi dari $sisi adalah $hitung";
  }

}