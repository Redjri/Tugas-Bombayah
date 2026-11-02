class produk {
  final int id;
  final String nama;
  final double harga;

  produk(
      {
        required this.id,
        required this.nama,
        required this.harga
      }
      );

  factory produk.fromJson(Map<String, dynamic> json) => produk(
      id: json['id'],
      nama: json['nama'],
      harga: json['harga' as num].toDouble()
  );
}