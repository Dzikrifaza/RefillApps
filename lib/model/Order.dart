class Order {
  int idOrder;
  String namaUser;
  String alamat;
  String namaBarang;
  String keterangan;

  Order(
      {this.idOrder,
      this.namaUser,
      this.alamat,
      this.namaBarang,
      this.keterangan});

  Order.fromJson(Map<String, dynamic> json) {
    idOrder = json['id_order'];
    namaUser = json['nama_user'];
    alamat = json['alamat'];
    namaBarang = json['nama_barang'];
    keterangan = json['keterangan'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id_order'] = this.idOrder;
    data['nama_user'] = this.namaUser;
    data['alamat'] = this.alamat;
    data['nama_barang'] = this.namaBarang;
    data['keterangan'] = this.keterangan;
    return data;
  }
}
