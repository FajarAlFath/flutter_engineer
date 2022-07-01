import 'package:flutter_bayeue/pages/home/feature/payment/fitur/fitur_page.dart';

class Payment {
  final String image, nama;
  Payment(
    this.image,
    this.nama,
  );
}

List<Payment> listpayment = [
  Payment('assets/images/lamp.png', 'Listrik'),
  Payment('assets/images/hptlp.png', 'Pulsa'),
  Payment('assets/images/hpjrg.png', 'Paket Data'),
  Payment('assets/images/internet.png', 'Internet'),
];

List classes = [
  const ListrikPage(),
  const PulsaPage(),
  const PaketDataPage(),
  const InternetPage(),
];
