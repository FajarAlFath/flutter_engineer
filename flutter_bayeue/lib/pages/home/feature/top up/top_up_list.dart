import 'package:flutter_bayeue/pages/home/feature/top%20up/fitur/fitur.dart';

class TopUp {
  final String image, nama;
  TopUp(
    this.image,
    this.nama,
  );
}

List<TopUp> listTopUp = [
  TopUp('assets/produk/ovo.png', 'OVO'),
  TopUp('assets/produk/spay.png', 'ShopeePay'),
  TopUp('assets/produk/dana.png', 'DANA'),
  TopUp('assets/produk/gopay.png', 'GoPay'),
];

List classes = [
  const OvoPage(),
  const ShopeePage(),
  const DanaPage(),
  const GopayPage(),
];
