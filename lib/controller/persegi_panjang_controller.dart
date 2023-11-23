
import 'package:get/get.dart';

class PersegiPanjangController extends GetxController{
  int panjang = 0;
  int lebar = 0;
  final hasil = "".obs;

  void hitungLuas(){
    num hitung = panjang * lebar;
    hasil.value = "Hasil Perhitungan Luas Persegi Panjang dari $panjang x $lebar adalah $hitung";
  }

  void hitungKeliling(){
    num hitung = panjang + lebar + panjang+ lebar;
    hasil.value = "Hasil Perhitungan Keliling Persegi Panjang adalah $hitung ";
  }

}